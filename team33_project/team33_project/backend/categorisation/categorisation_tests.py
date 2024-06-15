"""
This module defines the unit tests wrote for the categorise function
"""
import unittest
import json
import os
import sys
import nltk
from categorisation import categorise

nltk.download('wordnet')

def read_json(file_path: str) -> list[dict]:
    """
    @author: Jack Rimmer

    function is for reading the json file containing all the pre labelled urls

    :param file_path: path to json file containing the urls

    :return: json object containing the file data
    """

    # throw error if file doesn't exist
    if os.path.isfile(file_path) is False:
        print(f"ERROR: file {file_path} does not exist !", file=sys.stderr)
        return False

    with open(file_path, "r", encoding="utf-8") as file:
        data = json.loads(file.read())
        return data


class ReceiptLanguageTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    this class contains all the unit tests for categorising
    receipt like language found on real world receipt items
    """

    def setUp(self):
        self.data = read_json("test_data.json")

    def apply_test(self, category: str):
        """
        @author: Jack Rimmer

        :param category: str defining which category the tests are
        being ran for
        """

        for product in self.data[category]:
            with self.subTest(product=product):
                result = categorise([product])
                result_category = result[product]
                self.assertEqual(result_category, category)

    def test_food_and_drink(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Food & Drink" category
        """
        self.apply_test("Food & Drink")

    def test_confectionaries(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Confectionaries / Cakes / Biscuits" category
        """
        self.apply_test("Confectionaries / Cakes / Biscuits")

    def test_alcohol_and_smoking(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Alcohol & Smoking" category
        """
        self.apply_test("Alcohol & Smoking")

    def test_pets(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Pets" category
        """

        self.apply_test("Pets")

    def test_health_and_beauty(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Health & Beauty" category
        """

        self.apply_test("Health & Beauty")

    def test_baby(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Baby" category
        """

        self.apply_test("Baby")

    def test_gambling(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Gambling" category
        """

        self.apply_test("Gambling")

    def test_cleaning(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Cleaning" category
        """

        self.apply_test("Cleaning")

    def test_entertainment(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Entertainment" category
        """

        self.apply_test("Entertainment")

    def test_household(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Household" category
        """

        self.apply_test("Household")

    def test_clothing(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Clothing" category
        """

        self.apply_test("Clothing")

    def test_jewellery(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Jewellery" category
        """

        self.apply_test("Jewellery")

    def test_technology(self):
        """
        @author: Jack Rimmer

        runs the tests on the "Technology" category
        """

        self.apply_test("Technology")

if __name__ == "__main__":
    unittest.main()
