"""
this module defines the unit tests for the parse.py
module responsible for text preprocessing
"""
import unittest
import pandas as pd
from parse import validate_column, remove_duplicates, remove_units, \
    remove_extra_characters, remove_symbols, make_lower_case, list_to_dataframe

class ValidateColumnTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    class containing all unit tests for the
    validate_column() function
    """

    def test1(self):
        """
        @author: Jack Rimmer

        checks if given a dataframe of ints returns false
        and prints and error message as should be strings
        """

        data = [1,2,3]
        dataframe = pd.DataFrame(data, columns=["name"])
        self.assertFalse(validate_column(dataframe, "name"))

    def test2(self):
        """
        @author: Jack Rimmer

        checks if given a dataframe of strings returns true
        """

        data = ["potatoes", "crisps", "tomato sauce"]
        dataframe = pd.DataFrame(data, columns=["name"])
        self.assertTrue(validate_column(dataframe, "name"))


class RemoveDuplicatesTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    class containing all unit tests for the
    remove_duplicates() function
    """

    def test1(self):
        """
        @author: Jack Rimmer

        given a dataframe with two duplicate rows should return
        dataframe with one less item
        """

        data = {"name": ["potatoes", "potatoes", "tablets"],
                "label": ["food & drink", "food & drink", "health & beauty"]}
        # should drop one instance of potatoes as have the same category
        dataframe = pd.DataFrame(data=data)
        dataframe = remove_duplicates(dataframe)
        self.assertEqual(len(dataframe), 2)

    def test2(self):
        """
        @author: Jack Rimmer

        given a dataframe with two duplicate item names should return
        a dataframe with one less item
        """

        data = {"name": ["potatoes", "potatoes", "tablets"],
                "label": ["food & drink", "technology", "health & beauty"]}
        # should drop all instances of potatoes as have conflicting categories
        dataframe = pd.DataFrame(data=data)
        dataframe = remove_duplicates(dataframe)
        self.assertEqual(len(dataframe), 1)

    def test3(self):
        """
        @author: Jack Rimmer

        given a dataframe with no duplicates should return a dataframe of same
        length i.e unchanged
        """

        data = {"name": ["potatoes", "crisps", "tablets"],
                "label": ["food & drink", "food & drink", "health & beauty"]}
        # should drop all instances of potatoes as have conflicting categories
        dataframe = pd.DataFrame(data=data)
        dataframe = remove_duplicates(dataframe)
        self.assertEqual(len(dataframe), 3)


class MakeLowerCaseTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    class containing all the unit tests for the
    make_lower_case() function
    """

    @staticmethod
    def apply_function(function: callable, data: list[str]):
        """
        @author: Jack Rimmer

        this function takes a list of values and the
        function to be tested it then maps input into a
        dataframe, applies the function then returns result
        as a list

        :param function: function to be mapped over the input data
        this is what we are testing

        :param data: this is the test data for which function param is
        to be applied to

        :return: returns a list where function has been mapped over
        each entry
        """

        dataframe = list_to_dataframe(data)
        dataframe = function(dataframe, "name")
        output = dataframe["name"].tolist()
        return output

    def ensure_equal(self, output: callable, expected_output: list[str]):
        """
        @author: Jack Rimmer

        this function takes two lists and asserts there both equal

        :param output: this is the output given when applying the function
        to be tested

        :param expected_output: this is the output that should be returned
        by the function
        """

        for out, expected in zip(output, expected_output):
            with self.subTest(out=out):
                self.assertEqual(out, expected)

    def test1(self):
        """
        @author: Jack Rimmer

        given a list of strings in capitals should return same
        strings in lower case
        """

        case = ["LOREM IPSUM", "DOLOR AMET"]
        expected_output = ["lorem ipsum", "dolor amet"]

        output = self.apply_function(make_lower_case, case)
        self.ensure_equal(output, expected_output)

    def test2(self):
        """
        @author: Jack Rimmer

        given a list of strings all in lower case should return
        the same list
        """

        case = ["lorem ipsum", "dolor amet"]
        expected_output = ["lorem ipsum", "dolor amet"]

        output = self.apply_function(make_lower_case, case)
        self.ensure_equal(output, expected_output)

    def test3(self):
        """
        @author: Jack Rimmer

        given a list of strings containing symbols should
        return all the strings lowercased still containing
        the symbols
        """

        case = ["LORE+M IPSUM", "/DOLOR AMET"]
        expected_output = ["lore+m ipsum", "/dolor amet"]

        output = self.apply_function(make_lower_case, case)
        self.ensure_equal(output, expected_output)

    def test4(self):
        """
        @author: Jack Rimmer

        given a list of an empty string should return list
        containing the empty string
        """

        case = [""]
        expected_output = [""]

        output = self.apply_function(make_lower_case, case)
        self.ensure_equal(output, expected_output)

    def test5(self):
        """
        @author: Jack Rimmer

        given a list containing string of only symbols
        should return the list containing the same string
        """

        case = ["++)£_£"]
        expected_output = ["++)£_£"]

        output = self.apply_function(make_lower_case, case)
        self.ensure_equal(output, expected_output)


class RemoveUnitsTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    class containing unit tests for
    remove_extra_characters() function
    """

    @staticmethod
    def apply_function(function: callable, data: list[str]):
        """
        @author: Jack Rimmer

        this function takes a list of values and the
        function to be tested it then maps input into a
        dataframe, applies the function then returns result
        as a list

        :param function: function to be mapped over the input data
        this is what we are testing

        :param data: this is the test data for which function param is
        to be applied to

        :return: returns a list where function has been mapped over
        each entry
        """

        dataframe = list_to_dataframe(data)
        dataframe = function(dataframe, "name")
        dataframe = remove_extra_characters(dataframe, "name")
        output = dataframe["name"].tolist()
        return output

    def ensure_equal(self, output: list[str], expected_output: list[str]):
        """
        @author: Jack Rimmer

        this function takes two lists and asserts there both equal

        :param output: this is the output given when applying the function
        to be tested

        :param expected_output: this is the output that should be returned
        by the function
        """

        for out, expected in zip(output, expected_output):
            with self.subTest(out=out):
                self.assertEqual(out, expected)

    def test1(self):
        """
        @author: Jack Rimmer

        given strings containing variation of
        pack quantifier removes them safely
        """

        case = ["5 pack apples", "pack 6 apples"]
        expected_output = ["apples", "apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test2(self):
        """
        @author: Jack Rimmer

        given strings containing pck quantifier
        safely removes them
        """

        case = ["5 pck apples", "pck 6 apples"]
        expected_output = ["apples", "apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test3(self):
        """
        @author: Jack Rimmer

        given string containing pk quantifier
        removes them safely
        """

        case = ["5 pk apples", "pk 6 apples"]
        expected_output = ["apples", "apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test4(self):
        """
        @author: Jack Rimmer

        given a string containing pk quantifier
        remove it safely
        """

        case = ["apples 5pk", "pk apples"]
        expected_output = ["apples", "apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test5(self):
        """
        @author: Jack Rimmer

        given string containing pa quantifier
        should safely remove them
        """

        case = ["5 pa apples", "pa 6 apples"]
        expected_output = ["pa apples", "pa apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test6(self):
        """
        @author: Jack Rimmer

        given string containing minimum quantifier
        should safely remove them
        """

        case = ["minimum 5 apples", "tesco minimum 10 apples"]
        expected_output = ["apples", "tesco apples"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test7(self):
        """
        @author: Jack Rimmer

        given string containing litres quantifiers
        should safely remove them
        """

        case = ["3.5 litres of milk", "1 25l of orange juice", "2 litres of soda", "champagne 50cl"]
        expected_output = ["of milk", "of orange juice", "of soda", "champagne"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test8(self):
        """
        @author: Jack Rimmer

        given a string containing ml quantifier
        should safely remove them
        """

        case = ["500ml foundation", "beer can 600ml", "johnsons 600ml cup"]
        expected_output = ["foundation", "beer can", "johnsons cup"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test9(self):
        """
        @author: Jack Rimmer

        given a string containing kilogram quantifier
        should safely remove them
        """

        case = ["1kg potatoes", "finest 10 kilograms sand", "best rice 1 kilogram"]
        expected_output = ["potatoes", "finest sand", "best rice"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test10(self):
        """
        @author: Jack Rimmer

        given a string containing grams quantifier
        should safely remove them
        """

        case = ["250g dog food", "best strawberries 500grams", "baking powder 800 grams"]
        expected_output = ["dog food", "best strawberries", "baking powder"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test11(self):
        """
        @author: Jack Rimmer

        given a string containing pieces quantifier
        should safely remove them
        """

        case = ["5 chicken pieces", "7 pieces bread", "basil 10 pieces"]
        expected_output = ["chicken", "bread", "basil"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test12(self):
        """
        @author: Jack Rimmer

        given a string containing mm cm or m quantifier
        should safely remove them
        """

        case = ["30cm ruler", "100 mm string", "1 m mirror"]
        expected_output = ["ruler", "string", "mirror"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test13(self):
        """
        @author: Jack Rimmer

        given a string containing the x (as in 5x5) quantifier
        should safely remove them
        """

        case = ["5x5 candles", "x50 matches", "10x pizza"]
        expected_output = ["candles", "matches", "pizza"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

    def test14(self):
        """
        @author: Jack Rimmer

        given a string containing no quantifier
        should return the original string
        """

        case = ["candles", "", "+--"]
        expected_output = ["candles", "", "+--"]
        output = self.apply_function(remove_units, case)
        self.ensure_equal(output, expected_output)

class RemoveSymbolsTests(unittest.TestCase):
    """
    @author: Jack Rimmer

    class containing unit tests for
    remove_symbols() function
    """

    @staticmethod
    def apply_function(function: callable, data: list[str]):
        """
        @author: Jack Rimmer

        this function takes a list of values and the
        function to be tested it then maps input into a
        dataframe, applies the function then returns result
        as a list

        :param function: function to be mapped over the input data
        this is what we are testing

        :param data: this is the test data for which function param is
        to be applied to

        :return: returns a list where function has been mapped over
        each entry
        """

        dataframe = list_to_dataframe(data)
        dataframe = function(dataframe, "name")
        output = dataframe["name"].tolist()
        return output

    def ensure_equal(self, output: list[str], expected_output: list[str]):
        """
        @author: Jack Rimmer

        this function takes two lists and asserts there both equal

        :param output: this is the output given when applying the function
        to be tested

        :param expected_output: this is the output that should be returned
        by the function
        """

        for out, expected in zip(output, expected_output):
            with self.subTest(out=out):
                self.assertEqual(out, expected)

    def test1(self):
        """
        @author: Jack Rimmer

        given a string containing ' symbol should
        remove symbol and not leave a space
        """
        case = ["claire's", "jess'", "there's hello"]
        expected_output = ["claires", "jess", "theres hello"]
        output = self.apply_function(remove_symbols, case)
        self.ensure_equal(output, expected_output)

    def test2(self):
        """
        @author: Jack Rimmer

        given a string containing … symbol should
        remove it an not leave a space
        """

        case = ["ps…"]
        expected_output = ["ps"]
        output = self.apply_function(remove_symbols, case)
        self.ensure_equal(output, expected_output)

    def test3(self):
        """
        @author: Jack Rimmer

        given a string containing a ! should replace
        it with a space
        """

        case = ["wow!", "he!!lo", "!bar"]
        expected_output = ["wow ", "he  lo", " bar"]
        output = self.apply_function(remove_symbols, case)
        self.ensure_equal(output, expected_output)

    def test4(self):
        """
        @author: Jack Rimmer

        given a string containing a " should replace
        it with a space
        """

        case = ['"hello"', 'this"', 'he"l"o']
        expected_output = [" hello ", "this ", "he l o"]
        output = self.apply_function(remove_symbols, case)
        self.ensure_equal(output, expected_output)

    def test5(self):
        """
        @author: Jack Rimmer

        given a string containing a # should replace it
        with a space
        """

        case = ["wow#", "he##lo", "#bar"]
        expected_output = ["wow ", "he  lo", " bar"]
        output = self.apply_function(remove_symbols, case)
        self.ensure_equal(output, expected_output)

    def test6(self):
        """
        @author: Jack Rimmer

        given a string containing a $ should replace
        it with a space
        """

        case = ["wow$", "he$$lo", "$bar"]
        expected_output = ["wow ", "he  lo", " bar"]
        output = self.apply_function(remove_symbols, case)

        self.ensure_equal(output, expected_output)

if __name__ == "__main__":
    unittest.main()
