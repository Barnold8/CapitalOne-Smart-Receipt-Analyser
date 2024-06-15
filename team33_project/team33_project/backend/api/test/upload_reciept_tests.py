import unittest
import base64
import requests

# python3.11 -m unittest discover -s . -p '*_tests.py'

SERVER_IP = "http://localhost"
IP = "http://188.166.76.134"

def getb64_image(file_path: str):
    """
    @author: Jack Rimmer

    helper function for getting the b64 string of
    an image

    :param file_path: string containing path to image

    :return: returns base 64 string of image that was
             given
    """
    with open(file_path, "rb") as img_file:
        my_string = base64.b64encode(img_file.read())
    return my_string.decode("utf-8")

class UploadReceiptTests(unittest.TestCase):
    """ 
    @author: Jack Rimmer

    this class defines the test cases for
    the upload-receipt route of the api
    """

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.api_route = "/api/upload-receipt"
        self.headers = {"Content-Type": "application/json"}
        self.valid_body = '{"img":' + '"' + getb64_image("test_data/test_receipt1.jpg") + '"}'
        self.maxDiff = None

    def login(self) -> str:
        """
        @author: Jack Rimmer
        helper function logs in to generate an auth token
        for use within a test
        """

        body = '{"user": "2", "pass": "123"}'
        response = requests.post(
            SERVER_IP+"/api/login", headers=self.headers, data=body, timeout=100)

        return response.content.decode("utf-8")

    def logout(self, x_token: str) -> bool:
        """ 
        @author: Jack Rimmer

        helper function to ensure that a user is logged
        out at the end of a test case
        """

        token = {"X-Token": x_token}
        response = requests.post(
            SERVER_IP+"/api/logout", headers=token, timeout=100)
        if (response.status_code == 200):
            return True
        else:
            return False
          
    def test_status_code1(self):
        """ 
        @author: Jack Rimmer

        tests that given a valid token and base64 image
        server will process this without any issues and
        return appropriate status code
        """

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)
        self.logout(token)
        self.assertEqual(response.status_code, 200)

    def test_status_code2(self):
        """ 
        @author: Jack Rimmer

        tests that given a request missing Content-Type
        from the header correct status code is returned
        """

        token = self.login()
        header = {"X-Token": token}
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)
        
        self.logout(token)
        self.assertEqual(response.status_code, 400)

    def test_status_code3(self):
        """ 
        @author: Jack Rimmer

        tests that given a request with invalid image
        provided in the body correct status code is returned
        """

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        body = '{"img": "foo"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=body, timeout=100)

        self.logout(token)
        self.assertEqual(response.status_code, 400)

    def test_response_message1(self):
        """ 
        @author: Jack Rimmer

        tests that given a valid token and base64 image
        server will process this without any issues and
        return appropriate message
        """

        assert_data = {"0": ["GOODFELLAS G BRE", "Food & Drink", 2.4],
                       "1": ["GDFL THCRST MRG", "Food & Drink", 4.45],
                       "2": ["PEPRAMI ORGNAL", "Food & Drink", 0.75]}

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)

        self.logout(token)
        self.assertEqual(response.json(), assert_data)

    def test_response_message2(self):
        """ 
        @author: Jack Rimmer

        tests that given a request missing Content-Type
        from the header correct message is returned
        """

        token = self.login()
        header = {"X-Token": token}
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)
        
        self.logout(token)
        self.assertEqual(response.content.decode("utf-8"), "Error: bad request")

    def test_response_message3(self):
        """ 
        @author: Jack Rimmer

        tests that given a request with invalid image
        provided in the body correct message is returned
        """

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        body = '{"img": "foo"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=body, timeout=100)

        self.logout(token)
        self.assertEqual(response.content.decode("utf-8"), "Error: invalid image")

    def test_response_message4(self):
        """ 
        @author: Jack Rimmer

        tests that given a request with invalid body
        provided in the body correct message is returned
        """

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        body = '"img": "foo"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=body, timeout=100)

        self.logout(token)
        self.assertEqual(response.content.decode("utf-8"), "Error: bad request")

    def test_response_message5(self):
        """ 
        @author: Jack Rimmer

        tests that given a request with invalid body
        provided in the body correct message is returned
        """

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        valid_body = '{"img":' + '"' + getb64_image("test_data/dog.jpeg") + '"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=valid_body, timeout=100)

        self.logout(token)
        self.assertEqual(response.content.decode("utf-8"), "Error: Could not scan receipt")

    def test_response_message6(self):
        """ 
        @author: Jack Rimmer

        tests that given a valid token and base64 image
        server will process this without any issues and
        return appropriate message
        """

        assert_data = {"0": ["GOODFELLAS G BRE", "Food & Drink", 2.4],
                       "1": ["GDFL THCRST MRG", "Food & Drink", 4.45],
                       "2": ["PEPRAMI ORGNAL", "Food & Drink", 0.75]}

        token = self.login()
        header = {"Content-Type": "application/json", "X-Token": token}
        r = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)

        response = requests.post(
            SERVER_IP+self.api_route, headers=header, data=self.valid_body, timeout=100)

        self.logout(token)
        self.assertEqual(response.json(), assert_data)

if __name__ == "__main__":
    unittest.main()
