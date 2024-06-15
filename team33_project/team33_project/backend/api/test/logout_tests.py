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

class LogoutTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    this class defines the tests for account logout
    api route
    """

    def __init__(self, methodName: str = "runTest") -> None:
        super().__init__(methodName)
        self.api_route = "/api/logout"
        self.headers = {"Content-Type": "application/json"}

    def login(self):
        """
        @author: Jack Rimmer

        helper function logs in to generate an auth token
        for use within a test
        """

        body = '{"user": "2", "pass": "123"}'
        response = requests.post(
            SERVER_IP+"/api/login", headers=self.headers, data=body, timeout=10)

        return response.content.decode("utf-8")

    def test_status_code1(self):
        """
        @author: Jack Rimmer

        tests that given a valid auth token
        when logging out correct status code is
        returned
        """

        token = {"X-Token": self.login()}
        response = requests.post(
            SERVER_IP+self.api_route, headers=token, timeout=10)
        self.assertEqual(response.status_code, 200)

    def test_status_code2(self):
        """
        @author: Jack Rimmer

        tests that given a valid auth token
        when logging out correct status code is
        returned
        """

        token = {"X-Token": "foo"}
        response = requests.post(
            SERVER_IP+self.api_route, headers=token, timeout=10)
        self.assertEqual(response.status_code, 401)

    def test_response_message1(self):
        """
        @author: Jack Rimmer

        tests that given a valid auth token
        when logging out correct message bytes is
        returned
        """

        token = {"X-Token": self.login()}
        response = requests.post(
            SERVER_IP+self.api_route, headers=token, timeout=10)
        self.assertEqual(response.content.decode("utf-8"), "Logged out successfully.")

    def test_response_message2(self):
        """
        @author: Jack Rimmer

        tests that given a valid auth token
        when logging out correct message bytes is
        returned
        """

        token = {"X-Token": "foo"}
        response = requests.post(
            SERVER_IP+self.api_route, headers=token, timeout=10)
        self.assertEqual(response.content.decode("utf-8"), 'Token "X-Token", does not exist.')

if __name__ == "__main__":
    unittest.main()
