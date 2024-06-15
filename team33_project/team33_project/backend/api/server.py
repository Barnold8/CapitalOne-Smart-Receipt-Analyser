"""
Usage of modules
================

secrets      : Generate a cryptographic string for the session token

base64       : Convert bas64 string back to image data

hashlib      : Hash passwords using specific encryption standards

datetime     : Assign dates to receipt objects

flask        :

        request      : Accept requests coming from GET and POST

        jsonify      : Convert dictionary to JSON for responses

        Response     : Let API recipient know the status of their action

flask_cors    :

        CORS         : Allows communications to the server

        cross_origin : Allows communications to the server

flask_mysqldb :

        MySQL        : Communicate to the database

"""
import secrets
import base64
import hashlib
from datetime import datetime
from collections import OrderedDict
from flask import Flask, request, jsonify , Response
from flask_mysqldb import MySQL
import flask_monitoringdashboard as dashboard
import nltk
import sys
import binascii
from itertools import chain


from ocr import process_image_api
from categorisation import categorise

app = Flask(__name__)
dashboard.bind(app)
app.config["MYSQL_HOST"] = "db"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "password"
app.config["MYSQL_DB"] = "USER_DB"
app.config["MYSQL_PORT"] = 3306
app.config["JSON_SORT_KEYS"] = False

nltk.download('wordnet')

mysql = MySQL(app)
CURSOR = None

conversion_dictionary = {
    "pets" : "Pets",
    "Alcohol & Smoking" : "SmokingAlcohol",
    "Baby" : "Baby",
    "Gambling" : "Gambling",
    "Cleaning" : "Cleaning",
    "Confectionaries / Cakes / Biscuits" : "Confectionary",
    "Food & Drink" : "FoodDrink",
    "Entertainment" : "Entertainment",
    "Household" : "Household",
    "Health & Beauty" : "HealthBeauty",
}



session_tokens = {} # empty dict for storing session tokens at runtime


def database_request(cmd: str) -> tuple:
    """
        @author     : Brandon Wright

        database_request function takes in a command to send to the database and returns
        the appropriate data

        :param cmd: This parameter takes in a string, this string is the command
                    the database reads to return data with.

        :return:    The data that comes from the database, usually formatted as a tuple
    """
    cur = mysql.connection.cursor()
    cur.execute(cmd)
    end_data = list(cur.fetchall())

    return end_data


def database_send(cmd: str) -> None:
    """
        @author    : Brandon Wright

        database_send function takes in a command to upload data to the database with

        :param cmd: This parameter is the command to tell the database what to
                    insert -> string
    """
    cur = mysql.connection.cursor()
    cur.execute(cmd)
    mysql.connection.commit()

def process_receipt(receipt_items : list[dict]) -> dict:
    """
        @author    : Brandon Wright

        process_receipt takes the original scanned receipt and the item categories and
        parses them into one receipt that is sent back to the frontend.

        :param receipt_items: Due to the nature of the data coming back from the AI systems,
        the parameter has to be a list of dictionaries. This list is the OCR result.

        :return:   Returns a dictionary containing the receipt items plus their categorised
        categories

    """
    try:
        token = request.headers["X-Token"]
    except Exception:
        return Response("Error: bad request",status=400)
    try:
        user_id = session_tokens[token]
    except Exception:
        return Response("Error: bad request",status=400)

    request_result = database_request(f"SELECT * FROM CORRECTIONS WHERE UserID = {user_id}")
    
    # Drop first element as its the primary key of the table and its not needed.
    popped_corrections = [list(x)[1:] for x in list(request_result)]
    # Make a dictionary out of the correction key value relation
    corrections = dict([x for x in popped_corrections])

    # Henry's code that merges duplicates into singular items
    single_items = {item['name'] : 0.0 for item in receipt_items}
    for item in receipt_items:
        single_items[item['name']] += item['price']

    receipt = {}
    names = list(single_items)      # all names from single_items (The keys)
    # names is needed so the categories can be determined
    categorised = categorise(names) # categorisation

    # gets single_items and turns it into an array so it can be parsed to a new dictionary
    names_and_prices = zip(single_items.keys(), single_items.values())
    #converts names_and_prices to an array which can more easily be converted to a dictionary
    pre_processed_data = list(chain.from_iterable(names_and_prices))

    # Grabs every 2 elements and uses them for dictionary generation based on pre processed data
    for i in range(0,len(pre_processed_data),2):
        # Ensures that receipt item indexs go every 1 not every 2
        receipt[int(i/2)] = [pre_processed_data[i],
                    categorised[pre_processed_data[i]],
                    pre_processed_data[i+1]]

    for elem in receipt.keys():
        if receipt[elem][0] in corrections:
            receipt[elem][1] = corrections[receipt[elem][0]]
    
    return receipt

def grab_receipt_ids(start_date:str,end_date:str,user_id:int)->list:
    """
        @author     : Brandon Wright

        grab_receipt_ids takes all the receipt ids in a given range pertaining to a user.
        This is so all receipt items can be grabbed for this range and parsed
        into receipt variables.

        :param start_date: Used to specify the start date for a range of dates.

        :param end_date:   If this date isnt specified,
                           then the day pertaining to 'start_date' is the
                           only day inferred.

        :param user_id:    Used to specify which user the receipt ids come from.

        :return:    Returns a list of receipt ids pertaining to a user
    """
    receipt_ids = None

    end_date = end_date if end_date is not None else start_date

    receipt_ids = database_request(
            f'SELECT ReceiptID FROM RECEIPTS WHERE UserID = {user_id} \
            AND BuyDate between "{start_date} 00:00:00" AND "{end_date} 23:59:59"'
            )

    return receipt_ids

def construct_receipts(receipt_ids:list, include_id: bool = False)->list[dict]:
    """
        @author     : Brandon Wright

        construct_receipts uses receipt ids to construct receipt JSON objects.
        Each receipt contains items, the items include: item name, item category,
        item price. A date is at the end of of each receipt.

        :receipt_ids: This is used to reference receipts to grab items from

        :return: receipts is the array of dictionaries containing the receipts

    """
    receipts = []

    for r_id in receipt_ids:
        receipt_index = 0
        receipt = {}

        items = list(database_request(f"SELECT * FROM ITEMS WHERE ReceiptID = {r_id[0]}"))
        date = database_request(f"SELECT BuyDate FROM RECEIPTS WHERE ReceiptID = {r_id[0]}")
        receipt["date"] = date[0][0].strftime("%Y-%m-%d")
        if include_id:
            receipt["receipt_id"] = r_id[0]

        for item in items:
            receipt[receipt_index] = [item[2],item[3],float(item[4])]
            receipt_index += 1
        receipts.append(receipt)

    return receipts


# POST RECEIPT
@app.route("/api/upload-receipt", methods=['POST'])
def process() -> jsonify:
    """
    @author         : Brandon Wright

        This endpoint is used for receiving an image and processing it via the
        OCR and Categorisation models respectively. When this image is scanned,
        a JSON response is returned to the frontend.
        
        `process` function takes in a POST request containing an image, this
        image needs to be sent as a base64 string to work.

        :web arg img: base64 string of the image which is ran through the OCR.
            This arg is NEEDED

        :return: Response object.
    """

    try:
        data = request.json["img"]
    except Exception as e:
        return Response("Error: bad request",status=400)

    try:
        raw_image = base64.b64decode(data)  # string -> binary img data
    except binascii.Error:
        return Response('Error: invalid image',status=400)

    try:
        with open('tmp.jpg', 'wb') as file:
            file.write(raw_image)
        processed_image = process_image_api('tmp.jpg')
    except Exception:
        return Response('Error: Could not scan receipt',status=400)

    # try:
    receipt = process_receipt(processed_image)
    # except KeyError:
    #     return Response('Error: Could not scan receipt',status=400)

    return jsonify(receipt)

# Send difference
@app.route("/api/confirm-receipt", methods=['POST'])
def send_difference():
    """
        @author: Brandon Wright

            This endpoint is used to upload receipt data and any corrections that need to be made for certain items, this only works on a user basis. This means user A can only correct an item for themselves and the changes do not persist for other users. 
        
            `send_difference` function takes in JSON data in
            the body which contains the receipt the user is
            happy with and the categorisation difference's
            for the categorisation model.

            :return: Response object
    """

    data = request.get_json()["data"]

    try:
        differences = data["Differences"]
    except KeyError:
        differences = {}


    receipt = data["Receipt"]
    token = request.headers["X-Token"]
    user_id = session_tokens[token]
    receipt_date = datetime.now()

    try:
        receipt_date = data["Date"]
    except KeyError:
        receipt_date = receipt_date.today()
        receipt_date = \
            receipt_date.strftime("%Y-%m-%d %H:%M:%S")

    database_send(f"INSERT INTO RECEIPTS(UserID,BuyDate)VALUES({user_id},'{receipt_date}')")

    receipt_id = \
        database_request(f"SELECT MAX(ReceiptID) from RECEIPTS WHERE UserID = {user_id}")[0][0]

    for key, value in receipt.items():
        database_send(f'INSERT INTO ITEMS \
                      (ReceiptID,ItemName,ItemCategory,ItemPrice)\
                      VALUES({receipt_id},"{key}","{value[0]}",{value[1]})')

    for key, value in differences.items():
        database_send(f'INSERT INTO CORRECTIONS \
                      (UserID,ItemName,Correction)VALUES({user_id},"{key}","{value}")\
                      ON DUPLICATE KEY UPDATE Correction = "{value}"')

    return Response("Receipt added to user.",status=200)

# Delete receipt

@app.route("/api/delete-receipt", methods=['GET','POST'])
def delete_receipt():
    """
        @author: Brandon Wright

        This endpoint allows for the removal of receipts from the database. 
    """

    try:
        receipt_ID = request.args.get('receiptID')
    except Exception:
        return Response("Error: no receipt ID sent")

    database_send(f"DELETE FROM ITEMS WHERE ReceiptID = {receipt_ID}")
    database_send(f"DELETE FROM RECEIPTS WHERE ReceiptID = {receipt_ID}")

    return Response("Receipt deleted",status=200)

# Receipt range
@app.route("/api/receipt-range", methods=['GET','POST'])
def receipt_range()-> jsonify:
    """
        @author         : Brandon Wright

            This endpoint returns a range of receipts from date "A" to date "B" if two dates are sent. Otherwise it will return all of the receipts of date "A".
        
            receipt_range function returns receipts within a given
            range. It should be noted that if the second date
            is not specified, then the first date's
            receipts will only be included.

            :return: jsonify object containing receipt data
    """

    request_args = [
        request.args.get("DateStart"),
        request.args.get("DateEnd")
    ]

    user_id = session_tokens[request.headers["X-Token"]]
    receipt_ids = grab_receipt_ids(request_args[0],request_args[1],user_id)
    receipts = construct_receipts(receipt_ids)

    return jsonify(receipts)

# Receipt range
@app.route("/api/receipt-range-IDS", methods=['GET','POST'])
def receipt_range_ids()-> jsonify:
    """
        @author         : Brandon Wright

            This endpoint works like :ref:`delete-receipt`, however, it returns the receipt IDS pertaining to those receipts **ONLY**.
        
            receipt_range function returns receipts within a given
            range. It should be noted that if the second date
            is not specified, then the first date's
            receipts will only be included.

            :return: jsonify object containing receipt data
    """

    request_args = [
        request.args.get("DateStart"),
        request.args.get("DateEnd")
    ]

    user_id = session_tokens[request.headers["X-Token"]]
    receipt_ids = grab_receipt_ids(request_args[0],request_args[1],user_id)
    receipts = construct_receipts(receipt_ids,True)

    return jsonify(receipts)

# Create account
@app.route("/api/create-account", methods=['POST'])
def create_account() -> Response:
    """
        @author         : Brandon Wright

        This endpoint creates an account for a user in the database. This will **ONLY** work if the account doesnt exist. To see more information on how these accounts are stored, see :ref:`Accounts`.

        create_account stores the user onto the database given that
        the user does not already exist. This is done using the Users
        table and the HASHPASS table.

        :return:         Response object.
                         200 means the creation of the account worked.
                         401 means either a server side error occurred
                            or the account already exists.
    """

    try:
        user_name = request.json["user"]
        plain_text_password = str.encode(request.json["pass"])
    except Exception:
        return Response("Error: bad request",status = 400)

    try:
        hash_obj = hashlib.new('sha256')
        hash_obj.update(plain_text_password)
    except Exception:
        return Response("Error: bad request",status=400)


    if database_request(f'SELECT COUNT(1) FROM USERS WHERE UserName = "{user_name}";')[0][0] >= 1:
        return Response(f"User {user_name} already exists",status=401)
    try:
        database_send(
            f'INSERT INTO USERS(UserName)VALUES("{user_name}")'
            )
        user_id = database_request("SELECT MAX(UserId) FROM USERS")[0][0]
        database_send(
            f'INSERT INTO HASHPASS(HPass,UserID)VALUES("{hash_obj.hexdigest()}",{user_id})'
            )

    except ConnectionRefusedError as err:
        return Response(
            f"There was an error while trying to store a user into the database.\nError: {err}",
            status=401
            )
    
    return Response("Account was created successfully.",status=200)

# Login Auth
@app.route("/api/login", methods=['POST'])
def login_auth() -> Response:
    """
        @author         : Brandon Wright

        This endpoint logs a user in for the first time, assigning a token to a runtime table in the server code. This token is attached to a user and said user can have multiple tokens (this is so the user can be logged in on multiple devices). See about :ref:`Authentication`. If you wish to learn more. 

        login_auth takes a password string and a user string via the HTTP POST
        method. With this the function does a lookup to ensure the user has
        entered the correct password, this is possible by hashing the password
        that has been sent to the API and comparing it to the stored one on the
        database.

        :return:        Response object.
                        Response 200 means a successful authentication, a token
                            is sent along with this
                        Response 401 means an unsuccessful authentication.
                            This could be a server side error or the hashes
                            do not match.


    """
    plain_text_password = str.encode(request.json["pass"])
    user_name = request.json["user"]

    try:

        user_id = database_request(f"SELECT UserID from USERS WHERE UserName = '{user_name}'")[0][0]
        real_pass = list(database_request(
            f"SELECT HPass FROM HASHPASS WHERE UserID = {user_id}"))[0][0]

        hash_obj = hashlib.new('sha256')
        hash_obj.update(plain_text_password)
        token = token_generator(user_id)

        return (Response(token,status=200)
               if real_pass == hash_obj.hexdigest() and len(token) > 0
               else Response(
               "Login failure,\
               either username or password does not exist. | Or user already logged in",status=401)
               )

    except IndexError as ind:
        return Response(f"Login failure.\nError:{ind}",status=401)

# Logout
@app.route("/api/logout", methods=['POST'])
def logout() -> Response:
    """
        @author          : Brandon Wright

        This endpoint logs a user out. This works by removing their authentication  `"token" <https://en.wikipedia.org/wiki/Access_tokentoken>`_ from the runtime table of the server. This means the device the user is using for the account is logged out, any other devices are not effected by this.

        Logout works by removing the session token for a user.
        Thus logging them out

        :return:        Response 401 if the token cannot be removed,
                        Response 200 if the token is removed

    """
    token = ""
    try:
        token = request.headers["X-Token"]
    except KeyError as keyerr:
        return Response(
            f"""Could not logout user.
             No session token matches the token given.\nToken {token}\nError: {keyerr}""",
            status=401
            )

    session_tokens.pop(token)

    return Response("Logged out successfully.",status=200)

def token_generator(user_id: int) -> str:
    """
        @author         : Brandon Wright

        token_generator generates a cryptographic string using the built in secrets library.

        :param user_id: This is used so a specific user at the user ID can have a token.

        :return:        32 byte cryptographic urlsafe string or Response.
                        NOTE: if Response is returned, the user already has a token.
    """
    token = secrets.token_urlsafe(32)
    session_tokens[token] = user_id

    return token


@app.before_request
def token_auth() -> Response:
    """
        @author          : Brandon Wright

        This point of action is not an endpoint. It can be seen as the `"bouncer" <https://en.wikipedia.org/wiki/Bouncer>`_ for each interaction between the frontend and the API. This ensures security across the whole application since the authentication can only work if the user has logged in successfully. This is because they are given a `"token" <https://en.wikipedia.org/wiki/Access_tokentoken>`_ which is used to authenticate all requests past the login point.

        token_auth ignores specific endpoints and enforces
        token authorization on other endpoints. If a token doesn't
        match up in the session tokens dictionary and the endpoint
        isn't ignored, authentication fails

        :return:        Response object or None.
                        Response object means authentication failure.
                        None means authentication success
                        NOTE: Flask sends HTTP 200 response by default
    """
    if "dashboard" in request.path:
        return None

    overlook = ["create_account","login_auth",]
    headers = request.headers
    try:
        if request.endpoint not in overlook and headers["X-Token"] not in session_tokens:
            return Response(
                'Token "X-Token", does not exist.',
                status=401
                )
    except KeyError as keyerr:
        return Response(
                f'Token "X-Token", does not exist.\nError {keyerr}',
                status=401
                )

    return None

if __name__ == "__main__":
    app.run(debug=True)
