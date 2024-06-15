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

class CreateAccountTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    this class defines the tests for account creation
    api route
    """

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.api_route = "/api/create-account"
        self.headers = {"Content-Type": "application/json"}

    def test_status_code1(self):
        """
        @author: Jack Rimmer

        tests that upon successful account creation the correct
        status code is returned
        """

        body = '{"user": "John", "pass": "hemly"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        self.assertEqual(response.status_code, 200)

    def test_status_code2(self):
        """
        @author: Jack Rimmer

        tests that when trying to create an account
        with details that already exist correct status code
        is returned
        """

        body = '{"user": "Jack", "pass": "smith"}'
        requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        response = requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        self.assertEqual(response.status_code, 401)

    def test_status_code3(self):
        """ 
        @author: Jack Rimmer

        tests that given a request missing Content-Type
        from header then correct status code is returned
        """
        body = '{"user": "John", "pass":"Smith"}'
        response = requests.post(
            SERVER_IP+self.api_route, data=body, timeout=10)

        self.assertEqual(response.status_code, 400)


    def test_status_code4(self):
        """ 
        @author: Jack Rimmer

        tests that given a request with body in incorrect
        format appropriate status code is returned
        """
        
        body = '{"user": "John"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        self.assertEqual(response.status_code, 400)

    def test_response_message1(self):
        """
        @author: Jack Rimmer

        tests that upon successful account creation the correct
        message bytes are returned
        """

        body = '{"user": "James", "pass": "smith"}'
        response = requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        self.assertEqual(response.content.decode("utf-8"), "Account was created successfully.")

    def test_response_message2(self):
        """
        @author: Jack Rimmer

        tests that when trying to create an account
        with details that already exist correct message
        bytes are returned
        """

        body = '{"user": "Jimmy", "pass": "smith"}'
        requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)


        response = requests.post(
            SERVER_IP+self.api_route, headers=self.headers, data=body, timeout=10)

        self.assertEqual(response.content.decode("utf-8"), "User Jimmy already exists")

if __name__ == "__main__":
    unittest.main()
