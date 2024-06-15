import unittest
import base64
import requests

# python3.11 -m unittest discover -s . -p '*_tests.py'

SERVER_IP = "http://localhost"

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

class ConfirmReceiptTests(unittest.TestCase):

    """ 
    @author: Jack Rimmer

    this class defines the test cases for
    the confirm-receipt route of the api
    """

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.api_route = "/api/confirm-receipt"
        self.headers = {"Content-Type": "application/json"}

    def login(self) -> str:
        """
        @author: Jack Rimmer
        helper function logs in to generate an auth token
        for use within a test
        """

        body = '{"user": "2", "pass": "123"}'
        response = requests.post(
            SERVER_IP+"/api/login", headers=self.headers, data=body, timeout=10)

        return response.content.decode("utf-8")

    def logout(self, x_token: str) -> bool:
        """ 
        @author: Jack Rimmer

        helper function to ensure that a user is logged
        out at the end of a test case
        """

        token = {"X-Token": x_token}
        response = requests.post(
            SERVER_IP+"/api/logout", headers=token, timeout=10)
        if (response.status_code == 200):
            return True
        else:
            return False
    
    def test_status_code1(self):
        """
        @author: Jack Rimmer

        tests that given a valid request
        correct status code is returned
        """

        token = self.login()
        headers = {"Content-Type": "application/json", "X-Token": token}
    
    def test_status_code2(self):
        """
        @author: Jack Rimmer

        tests that given a request without
        valid auth token correct status code is
        returned
        """

    def test_status_code3(self):
        """
        @author: Jack Rimmer

        tests that given a request without
        Content-Type in header returns the correct
        status code
        """
 
    def test_status_code4(self):
        """
        @author: Jack Rimmer

        tests that given a request with an invalid
        body returns the correct status code
        """
 
    def test_response_message1(self):
        """
        @author: Jack Rimmer

        tests that given a valid request
        returns the correct response message
        """
    
    def test_response_message2(self):
        """
        @author: Jack Rimmer

        tests that given a request without
        valid auth token returns the correct 
        response message 
        """

    def test_response_message3(self):
        """
        @author: Jack Rimmer

        tests that given a request without
        Content-Type in header returns the correct
        response message
        """
 
    def test_response_message4(self):
        """
        @author: Jack Rimmer

        tests that given a request with an invalid
        body returns the correct response message
        """
 