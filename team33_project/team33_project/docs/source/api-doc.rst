

.. |lock| image:: images/locked.png
   :height: 25px

.. |unlock| image:: images/unlocked.png
   :height: 25px

*************
API Reference
*************

Contents
========

| :ref:`Getting started`
| :ref:`Authentication`
| :ref:`Endpoints`
|     :ref:`Accounts`
|        :ref:`/api/create-account</api/create-account>` |unlock|
|        :ref:`/api/login` |unlock|
|        :ref:`/api/logout` |lock|
|     :ref:`Receipts`
|        :ref:`/api/upload-receipt` |lock|
|        :ref:`/api/confirm-receipt` |lock|
|        :ref:`/api/receipt-range` |lock|
|        :ref:`/api/receipt-range-IDS` |lock|
|        :ref:`/api/delete-receipt` |lock|

Getting started
===============
.. Getting started:


.. note:: 
  When using this API, these headers should be included in ALL requests in addition to any other specified. 

**KEY**

|lock| = Requires auth

|unlock| = Doesnt require auth

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Header
     - Data
   * - Content-Type
     - ``application/json``
   * - Content-Length 
     - <calculated when request is sent>
   * - Host 
     - <calculated when request is sent>
   * - User-Agent
     - <user agent>
   * - Accept
     - ``*\*``
   * - Accept-Encoding
     - ``gzip,deflate,br``
   * - Connection
     - ``keep-alive``

Authentication
==============

Majority of the endpoints in this API need authentication to run.
To authenticate, you need to send the token you get from ``/api/login``. 
This token is to be sent in the custom HTTP header ``X-Token``. If you cannot authenticate, 
the endpoint will refuse to run and you will receive an HTTP 401 response. 
You can assume the endpoint ran perfectly when you see the HTTP 200 response.

Endpoints
=================

Accounts
--------
.. Accounts:


/api/create-account 
^^^^^^^^^^^^^^^^^^^
|unlock|

.. /api/create-account:

**Examples:**

``Successful account creation``

| WebURL: *POST* http://188.166.76.134/api/create-account
| Headers: N/A

| Body:
.. code-block:: json
    
    {
        "user":"Smith",
        "pass":"ABC"
    }

Expected response:
    Status: 200
    Message: “Account was created successfully”


``User account already exists.``

| WebURL: POST http://188.166.76.134/api/create-account
| Headers: N/A

| Body:
.. code-block:: json
    
    {
        "user":"Smith",
        "pass":"ABC"
    }

Expected response:
    Status: 401
    Message: “User {user_name} already exists”

``Server-side error``

| WebURL: POST http://188.166.76.134/api/create-account
| Headers: N/A

| Body:
.. code-block:: json
    
    {
        "user":"Smith",
        "pass":"ABC"
    }

Expected response:
    Status: 401


/api/login
^^^^^^^^^^
.. /api/login:

|unlock|

**Examples:**

``Successful login``

| WebURL: POST http://188.166.76.134/api/login
| Headers: N/A
| Body:
.. code-block:: json

    {
        "user":"Smith",
        "pass":"ABC"
    }  


Expected response:
    Status: 200
    Message: {32-byte token}


``Unsuccessful login``

| WebURL: POST http://188.166.76.134/api/login
| Headers: N/A
| Body:
.. code-block:: json

    {
        "user":"Smith",
        "pass":"ABC"
    }


Expected response:
    Status: 401
    Message: “Login failure, either username or password does not exist.”

``Server-side error``

| WebURL: POST http://188.166.76.134/api/login
| Headers: N/A
| Body:
.. code-block:: json

    {
        "user":"Smith",
        "pass":"ABC"
    }

Expected response:
    Status: 401
    Message: “Login failure. Error {error}”



/api/logout 
^^^^^^^^^^^
|lock|

.. /api/logout :

**Examples:**

``Logout success``

| WebURL: POST http://188.166.76.134/api/logout

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

| Body: N/A

Expected response:
    Status: 200
    Message: “Logged out successfully.”

``Logout failure/Server-side failure``

| WebURL: POST http://188.166.76.134/api/logout
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

| Body: N/A

Expected response:
    Status: 401
    Message: “No session token matches the token given. Token: {token}. Error: {error}”

Receipts
--------
.. Receipts:

/api/upload-receipt  
^^^^^^^^^^^^^^^^^^^
|lock|

.. /api/upload-receipt  :

**Examples:**

``Successful upload``

| WebURL: POST http://188.166.76.134/api/upload-receipt 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string
| Body: 

.. code-block:: json
 
    {
        “img”:“Imagine a base64 string here”
    }

Expected response:
    Status: 200
    Message: JSON object containing scanned receipt data.

``Unsuccessful upload``

| WebURL: POST http://188.166.76.134/api/upload-receipt 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

| Body: 

.. code-block:: json
 
    {
        “img”:“Imagine a base64 string here”
    }

Expected response:
    Status: 400
    Message: “Could not scan the receipt. Error {error}”

/api/confirm-receipt 
^^^^^^^^^^^^^^^^^^^^
|lock|

.. /api/confirm-receipt :

**Examples:**

``Successful upload with no differences specified``

| WebURL: POST http://188.166.76.134/api/confirm-receipt 
| Headers: 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string
 
| Body:
 
.. code-block:: json
 
    {
        "data":{
            "Receipt": {
                "GOODFELLAS G BRE": [
                    "Food & Drink",
                    "2.40"
                ],
                "GDFL THCRST MRG": [
                    "Confectionaries / Cakes / Biscuits",
                    "4.45"
                ],
                "PEPRAMI ORGNAL": [
                    "Food & Drink",
                    "0.75"
                ]
            },

            "Date": "2023-03-13 21:22:05"
        }
    }

Expected response:
    Status: 200
    Message: “Written to server successfully”


``Successful upload with differences specified.``

| WebURL: POST http://188.166.76.134/api/confirm-receipt 
| Headers: 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

| Body: 
 
.. code-block:: json
 
    {
            "data":{
            "Receipt": {
                "GOODFELLAS G BRE": [
                    "Food & Drink",
                    "2.40"
                ],
                "GDFL THCRST MRG": [
                    "Confectionaries / Cakes / Biscuits",
                    "4.45"
                ],
                "PEPRAMI ORGNAL": [
                    "Food & Drink",
                    "0.75"
                ]
            },
            "Differences": {
                "GDFL THCRST MRG": "Confectionaries / Cakes / Biscuits"
            },
            "Date": "2023-03-13 21:22:05"
        }
    }

Expected response:
    Status: 200
    Message: “Written to server successfully”

``Unsuccessful upload``

| WebURL: POST http://188.166.76.134/api/confirm-receipt 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

| Body: 

.. code-block:: json
  
    {  
        "Receipt":{
            "Coke": [
                "Household",
                2.49
            ],
            "Cake": [
                "Confectionary",
                5.99
            ]
        },
        "Differences" :{
            "Coke":"FoodAndDrink",
            "Cake":"Alcohol&Smoking"
        },
        "Date": "2023/03/01"
    }

Expected response:
    Status: 401
    Message: “Could not send data to the server. Error {error}”

/api/receipt-range 
^^^^^^^^^^^^^^^^^^
.. /api/receipt-range :

|lock|

.. note:: 

    To get ONLY the receipts pertaining to the current day, only specify information in the DateStart parameter. To get a range of receipts you will have to include the DateStart and DateEnd parameters in the URL. Note that the start pertains to the day at 00:00:00 and the end pertains to the day at 23:59:59. This means that if you only specify the DateStart, you will get all receipts the day between 00:00:00 and 23:59:59. If you specify BOTH DateStart and DateEnd, you will get receipts between DateStart 00:00:00 and DateEnd 23:59:59.

**Examples:**

``Request with ONLY DateStart specified.``

| WebURL: POST http://188.166.76.134/api/receipt-range?DateStart=2001-01-12 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - X-Token
     - 32 Byte string

.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - DateStart
     - Used to specify the start range of receipts OR used to specify the current day for receipts

Expected response:
    Status: 200
|     Message:  

        .. code-block:: json
        
            [
                {
                    "date": "2023-03-13",
                    "0": [
                        "GOODFELLAS G BRE",
                        "Food & Drink",
                        2.4
                    ],
                    "1": [
                        "GDFL THCRST MRG",
                        "Confectionaries / Cakes / Biscuits",
                        4.45
                    ],
                },
            ]

``Request with DateStart AND DateEnd specified``

| WebURL: POST http://188.166.76.134/api/receipt-range 

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-TokenFFF
     - 32 Byte string

.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - DateStart
     - Used to specify the start range of receipts OR used to specify the current day for receipts
   * - DateEnd
     - Used to specify the end date of receipts
	

Example URL: http://188.166.76.134/api/receipt-range?DateStart=1978-02-22&DateEnd=2023-03-2023 

Expected response:
    Status: 200
|     Message: 

        .. code-block:: json
        
            [
                {
                    "date": "2023-03-13",
                    "0": [
                        "GOODFELLAS G BRE",
                        "Food & Drink",
                        2.4
                    ],
                },
                {
                    "date": "2023-03-13",
                    "0": [
                        "GOODFELLAS G BRE",
                        "Food & Drink",
                        2.4
                    ],
                    "1": [
                        "GDFL THCRST MRG",
                        "Confectionaries / Cakes / Biscuits",
                        4.45
                    ],
                    "2": [
                        "PEPRAMI ORGNAL",
                        "Food & Drink",
                        0.75
                    ]
                },
            ]

``Unsuccessful response``

| WebURL: POST http://188.166.76.134/api/receipt-range 

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

Expected response:
    Status: 401
    Message: DEFAULT FLASK ERROR RESPONSE

/api/receipt-range-IDS 
^^^^^^^^^^^^^^^^^^^^^^
|lock|

.. /api/receipt-range-IDS :

.. note::  

    To get ONLY the receipts pertaining to the current day, only specify information in the DateStart parameter. To get a range of receipts you will have to include the DateStart and DateEnd parameters in the URL. Note that the start pertains to the day at 00:00:00 and the end pertains to the day at 23:59:59. This means that if you only specify the DateStart, you will get all receipts the day between 00:00:00 and 23:59:59. If you specify BOTH DateStart and DateEnd, you will get receipts between DateStart 00:00:00 and DateEnd 23:59:59.

**Examples:**

``Request with ONLY DateStart specified.``

| WebURL: POST http://188.166.76.134/api/receipt-range-IDS?DateStart=2001-01-12 

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - DateStart
     - Used to specify the start range of receipts OR used to specify the current day for receipts

Expected response:
    Status: 200
|     Message: 

        .. code-block:: json 

            [
                {
                    "date": "2023-04-19",
                    "receipt_id": 1,
                    "0": [
                        "FREE RANGE EGGS",
                        "Food & Drink",
                        2.4
                    ],
                    "1": [
                        "ICLND CKE",
                        "Confectionaries / Cakes / Biscuits",
                        4.45
                    ],
                    "2": [
                        "PEPRAMI ORGNAL",
                        "Food & Drink",
                        0.75
                    ]
                }
            ]

``Request with DateStart AND DateEnd specified``

| WebURL: POST http://188.166.76.134/api/receipt-range-IDS 

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - DateStart
     - Used to specify the start range of receipts OR used to specify the current day for receipts
   * - DateEnd
     - Used to specify the end date of receipts

Example URL: http://188.166.76.134/receipt-range-IDS?DateStart=1978-02-22&DateEnd=2023-03-2023 

Expected response:
    Status: 200
|     Message:

        .. code-block:: json
            
            [
                {
                    "date": "2023-03-13",
                    "0": [
                        "GOODFELLAS G BRE",
                        "Food & Drink",
                        2.4
                    ],
                },
                {
                    "date": "2023-03-24",
                    "0": [
                        "GOODFELLAS G BRE",
                        "Food & Drink",
                        2.4
                    ],
                    "1": [
                        "GDFL THCRST MRG",
                        "Confectionaries / Cakes / Biscuits",
                        4.45
                    ],
                    "2": [
                        "PEPRAMI ORGNAL",
                        "Food & Drink",
                        0.75
                    ]
                },
            ]

``Unsuccessful response``

| WebURL: POST http://188.166.76.134/api/receipt-range-IDS 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string


Expected response:
    Status: 401
    Message: DEFAULT FLASK ERROR RESPONSE

/api/delete-receipt 
^^^^^^^^^^^^^^^^^^^
|lock|

.. /api/delete-receipt:

**Examples:**

``Successful delete``

| WebURL: POST http://188.166.76.134/api/upload-receipt 
.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string


.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - receiptID
     - Used to specify what receipt to delete. All items related to this receipt are deleted too 
     
Expected response:
    Status: 200
    Message: “Receipt Deleted”

``Unsuccessful delete.``

| WebURL: POST http://188.166.76.134/api/upload-receipt 

.. list-table:: **Headers**
   :widths: 25 25
   :header-rows: 1

   * - Type
     - Information
   * - X-Token
     - 32 Byte string

.. list-table:: **Parameters**
   :widths: 25 25
   :header-rows: 1

   * - Parameter
     - Usage
   * - receiptID
     - Used to specify what receipt to delete. All items related to this receipt are deleted too 
     
Expected response:
    Status: 400
    Message: “Error no receipt ID sent”
