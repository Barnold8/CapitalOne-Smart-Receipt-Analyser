**************
Categorisation
**************

Dependencies
============

    * `NLTK <https://pandas.pydata.org/docs/>`_ | *Used to generate bigrams* | Version: 3.8.1

    * `pandas <https://pandas.pydata.org/docs/>`_ | *Used to import and handle .csv files* | Version: 2.0.1

This module is responsible for taking the name of an item from a receipt, and predicting which category it should go into. It makes use of data provided in a ``master.csv`` file - more information about this can be found in :doc:`parse`. This file must be named ``master.csv`` and must be placed in the same directory as ``categorisation.py``.

Usage
=====

To use this module, you must call:

    :py:meth:`backend.categorisation.categorisation.categorise`

This function takes a list of strings, representing the names of all products on a receipt, and returns a dictionary of the names, together with their categories. An example is shown below:

.. note::
    As the result is returned as a dictionary, with the item name as the key, if multiple items with the same name are sent to the categoriesation, the resulting dictionary will only contain this item once.

Example Output
==============

.. code-block:: json

    [
        {"Diet Coke": "Food & Drink"},
        {"Digestive Biscuits": "Confectionaries"},
        ...
    ]

Method
======

This function makes use of `Bayes' Theorem <https://en.wikipedia.org/wiki/Bayes%27_theorem>`_ to calculate the probability of a given string coresponding to a particular category. This function can be represented by:

.. math::
    P(C_k \mid w)=\frac{P(w \mid C_k) \cdot P(C_k)}{P(w)}

.. math::
    \hat{y} = \text{argmax}_{k \in K} P(C_k \mid w)

Where :math:`C_k` is a particular category, and :math:`w` is the input string.

Reference
=========

.. automodule:: backend.categorisation.categorisation
    :members:
