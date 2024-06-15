"""
This module handles categorisation of receipt items.
"""

import re
from collections import Counter
from typing import List
import os

import nltk
import pandas as pd

from parse import process_items

directory_path = os.path.dirname(os.path.abspath(__file__)) 
df = pd.read_csv(os.path.join(directory_path, 'master.csv'))

groups = dict(df.groupby('label')['name'].apply(list))

def process(strings: List) -> str:
    """
    @author: Henry Mitchell

    Splits the input text into bigrams and returns a list of original words
    as well as all bigrams.

    :param strings: list of strings to be processed

    :return: list of original words and bigrams
    """

    strings = [strings.lower() for strings in strings]

    bigrams = [list(nltk.bigrams(item.split())) for item in strings]
    bigrams = [bigram for sublist in bigrams for bigram in sublist]
    bigrams = [' '.join(bigram) for bigram in bigrams]

    strings = ' '.join(strings).split()

    return strings + bigrams

def get_regex(string: str) -> re.Pattern:
    """
    @author: Henry Mitchell

    Returns the regex used to match words with or without vowels present,
    as well as additional suffixes.

    :param string: the original string to be matched

    :return: compiled regex expression
    """

    vowel_sub = re.sub(r'[^aeiou]', r'\g<0>[aeiou]*', string)
    regex_string = rf'^{vowel_sub}\w*s?$'

    return re.compile(regex_string)

corpus = {k: process(v) for k, v in groups.items()}

def bayes(item: str) -> dict:
    """
    @author: Henry Mitchell

    Implements Bayes Algorithm.

    :param item: the item to be categorised

    :return: dict of categories and their scores
    """

    regex = get_regex(item)

    # Calculate the number of times a word appears in a given category
    def word_count(word, category):
        matches = 0
        for word in corpus[category]:
            if regex.match(word):
                matches += 1

        return matches

    # Calculate the probability of a category in the entire corpus
    def get_pck(category):
        n_ck = len(corpus[category])
        n_total = sum([len(corpus[category]) for category in corpus.keys()])

        return n_ck / n_total

    word_counts = {k: word_count(item, k) for k in corpus.keys()}

    # Calculate the probability of a word in the entire corpus
    def get_pw():
        total = 0
        for category in corpus.keys():
            total += word_counts[category]

        return total

    results = {}
    for category in corpus.keys():
        # Calculate all necessary variables
        pw_ck = word_counts[category] / len(corpus[category])
        pck = get_pck(category)
        pw = get_pw()

        # Catch divide-by-zero
        try:
            result = (pw_ck * pck) / pw
        except ZeroDivisionError:
            result = 0

        # Give higher priority to bigrams
        #TODO: Optimize this value
        if len(item.split()) > 1:
            result *= 10

        results[category] = result

    return results

def categorise(names: List[str]) -> dict:
    """
    @author: Henry Mitchell

    Simply takes a list of item names and returns the category
    that item is (probably) in.

    :param names: the names of the items to be categoriesed

    :return: [{name: category}]
    """
    new_names = process_items(names)

    output = {}
    for idx, name in enumerate(new_names):
        words = name.split()
        words = [word for word in words if len(word) > 1]
        bigrams = list(nltk.bigrams(words))
        words += [' '.join(bigram) for bigram in bigrams]

        results = sum([Counter(bayes(word)) for word in words], Counter())
        try:
            output[names[idx]] = results.most_common(1)[0][0]
        except IndexError:
            output[names[idx]] = None

    return output

if __name__ == '__main__':
    import sys

    item = sys.argv[1]

    result = categorise([item])
    print(result)
