"""
@author: Jack RImmer

this module is for preprocessing csv files as well as receipt input for
use in categorisation model
"""
import sys
import pandas as pd
from nltk.stem import WordNetLemmatizer

def validate_column(dataframe: pd.DataFrame, column_name: str) -> bool:
    """
    @author: Jack Rimmer

    function for ensuring that a given column from a dataframe contains strings

    :param dataframe: dataframe to be indexed
    :param column_name: column of dataframe to be verfied as being of type string

    :return: bool containing if check was valid or not true for was containing strings
    """

    if dataframe[column_name].dtype != object:
        print(
            f"ERROR: column {column_name} "
            f"is not of type object is of type {dataframe[column_name].dtype}",
            file=sys.stderr)
        return False

    return True


def remove_duplicates(dataframe: pd.DataFrame) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function intended to remove duplicate entries from a dataframe

    :param dataframe: dataframe to be operated on

    :return: returns the dataframe after duplicates have been removed
    """

    dataframe = dataframe.drop_duplicates()
    dataframe = dataframe.drop_duplicates(subset=['name'], keep=False)

    return dataframe


def make_lower_case(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function intended to remove duplicate entries from a dataframe

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to convert to lowercase

    :return: returns the dataframe after column has been made lowercase
    """
    if validate_column(dataframe, column_name) is False:
        return None

    # turn data into lower case
    dataframe[column_name] = dataframe[column_name].apply(lambda x: x.lower())

    return dataframe


def remove_units(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function for stripping different cases of quantity indication from dataframe column

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to have units stripped

    :return: returns the dataframe after units have been removed
    """

    if validate_column(dataframe, column_name) is False:
        return None

    # remove anything of the form minimum (number)
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"(minimum )\d+", '', regex=True)

    # remove anything of a quantities of packs
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"\d* ?(pa?c?k)", '', regex=True)

    # remove any form of units as not telling to category
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"(\d+ ?x ?)?\d*,?\d+\.?\d* ?(l|litre(s)?|c(l)?|ml|kg|kilogram(s)?|gram(s)?|g|pieces|cm|mm|m)\b",
        '',
        regex=True)

    # remove anything on quantities like 5x5 or something similar
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"\d*x\d+", '', regex=True)

    dataframe[column_name] = dataframe[column_name].str.replace(
        r"\b\d+\b", '', regex=True)

    return dataframe


def remove_symbols(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function for stripping different cases of quantity indication from dataframe column

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to have symbols stripped

    :return: returns the dataframe after symbols have been removed
    """

    if validate_column(dataframe, column_name) is False:
        return None

    # define the symbols that are to be replaced with spaces
    spaces = ['!', '"', '#', '$', '%', '&', '(', ')', '*',
              '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?',
              '@', '[', '\\', ']', '^', '_', '`', '{', '|', '}', '~']

    # define the symbols that are to be replaced with nothing
    non_spaces = ['’', "'", '…']

    for item in spaces:
        dataframe[column_name] = dataframe[column_name].str.replace(
            item, ' ', regex=False)

    for item in non_spaces:
        dataframe[column_name] = dataframe[column_name].str.replace(
            item, '', regex=False)

    return dataframe


def remove_shop_names(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function for stripping tesco or Primark name occurrences from dataframe column
    this is needed as data used in categorization was sourced from these two shops

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to have shop names stripped

    :return: returns the dataframe after shop names have been removed
    """

    if validate_column(dataframe, column_name) is False:
        return None

    # removing anything that has the name tesco in it
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"tesco ?(finest)?", '', regex=True)

    # removing the primark prefix of item name
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"^ps ", '', regex=True)

    return dataframe


def remove_extra_characters(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function to remove extra whitespace as well as single characters

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to have extra characters stripped

    :return: returns the dataframe after symbols have been removed
    """

    if validate_column(dataframe, column_name) is False:
        return None

    # removing multiple spaces with one space
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"\s+", ' ', regex=True)

    # remove spaces from start or end of item name
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"^\s+|\s+$", '', regex=True)

    # remove single letters that are on there own
    dataframe[column_name] = dataframe[column_name].str.replace(
        r"\b[a-z]\b", '', regex=True)

    return dataframe


def lemmatize_column(dataframe: pd.DataFrame, column_name: str) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    function to convert every word to its lemma for each word in a string over each row in a column

    :param dataframe: dataframe to be operated on
    :param column_name: name of column to have words converted to their lemmas

    :return: returns the dataframe after words have been converted to there lemmas
    """

    if validate_column(dataframe, column_name) is False:
        return None

    lemmatizer = WordNetLemmatizer()
    dataframe[column_name] = dataframe[column_name].apply(lambda x: " ".join(
        [lemmatizer.lemmatize(y) for y in x.split(" ")]))

    return dataframe


def preprocess_dataframe(dataframe: pd.DataFrame) -> pd.DataFrame:
    """
    @author: Jack Rimmer

    this function defines the order in which the processing steps must be applied for
    the text preprocessing

    :param dataframe: dataframe to be preprocessed

    :return: returns the dataframe after words have been converted to there lemmas
    """

    dataframe = remove_duplicates(dataframe)
    dataframe = make_lower_case(dataframe, "name")
    dataframe = remove_units(dataframe, "name")
    dataframe = remove_symbols(dataframe, "name")
    dataframe = remove_shop_names(dataframe, "name")
    dataframe = remove_extra_characters(dataframe, "name")
    dataframe = lemmatize_column(dataframe, "name")

    return dataframe


def list_to_dataframe(data: list[str]):
    """
    @author: Jack Rimmer

    this function is a helper function for mapping a list into a dataframe
    so can interact with this module

    :param data: list of strings to be processed

    :return: returns a dataframe containing the items of the list on each row under
        the column "name"
    """

    dataframe = pd.DataFrame(data, columns=["name"])
    return dataframe


def process_items(items):
    """
    @author: Jack Rimmer

    takes a list of strings an preprocesses the items within the given list
    and returns a list of processed strings

    :param items: list of strings to be preprocessed

    :return: list of preprocessed strings
    """

    dataframe = list_to_dataframe(items)
    dataframe = preprocess_dataframe(dataframe)
    return dataframe["name"].tolist()


if __name__ == "__main__":
    df = process_items(["APPLE", "banana 5 pack"])
    print(df)
