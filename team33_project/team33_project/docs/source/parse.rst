*****
Parse
*****

Dependencies
============

    * `pandas <https://pandas.pydata.org/docs/>`_ | *used for data operations* | Version:2.0.1 

    * `nltk <https://www.nltk.org/>`_  | *used for lemmatizing words* | Version:3.8.1

.. note::
    This module has been largely written for doing operations on pandas.DataFrame's.
    Can be given a list of strings via :py:meth:`backend.categorisation.parse.process_items` however 
    is converted to pandas.DataFrame internally. Documentation is linked 
    `here (Accessed: 01-05-2023) <https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.html>`_.

Usage
=====

For external usage of this module you should only need to access 2 methods

    :py:meth:`backend.categorisation.parse.process_items`

this function is used for applying defined text preprocessing steps onto a list
of items which is used within categorisation algorithm.

    :py:meth:`backend.categorisation.parse.preprocess_dataframe`

this can be used directly for preprocessing datasets that have been collected for
the models algorithm to be used which in the context of this project has been collected
using the :doc:`Web scraping framework<webscraping>`.

.. note::
    Order matters in which functions in the library are applied so if using individual
    functions in new code make sure order in which their applied is preserved

Explanation of Steps
====================

    #. :py:meth:`backend.categorisation.parse.remove_duplicates`
        Anything with the same name will be stripped. this would need to
        be commented out if you wanted to keep duplicate items. within this
        project we combine items of the same name and add their prices together
        when categorising new receipt items so this was only implemented for 
        processing raw datasets we have web scraped.

    #. :py:meth:`backend.categorisation.parse.make_lower_case`
        Simply takes a data frame and a column name and will convert
        all the strings in that column to lower case. Prints an error if given 
        a column of the wrong data type.

    #. :py:meth:`backend.categorisation.parse.remove_units`
        This function takes a data frame and a column name and remove quantities of the from

            * minimum (some number)
            * number of packs in some form
            * any of the metric units such as kilograms etc.
            * anything of the form 5x5 etc.

    #. :py:meth:`backend.categorisation.parse.remove_symbols`
        this function takes a data frame and a column name and 
        replaces all the following symbols with a space:

        .. code-block::

            ['!', '"', '#', '$', '%', '&', '(', ')', '*',
              '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?',
              '@', '[', '\\', ']', '^', '_', '`', '{', '|', '}', '~']
        
        and the following get replaced with nothing:

        .. code-block::

            ['’', "'", '…']

    #. :py:meth:`backend.categorisation.parse.remove_shop_names`
        this function takes a data frame and column name and will remove
        shop names specifically Tesco (finest) and ps which is a Primark receipt
        prefix. Ideally this should be added to in future to support more retailers
        as would increase accuracy of item categorisation.

    #. :py:meth:`backend.categorisation.parse.remove_extra_characters`
        this function takes a data frame and column name and removes any single
        characters and extra whitespace this is due these in almost all cases not
        being indicative to what category a string belongs too.
    
    #. :py:meth:`backend.categorisation.parse.remove_lemmatize_column`
        this function takes a data frame and column name and for each word in a string
        will convert it into its lemma using the nltk library. Links to useful resources and the nltk documentation below.

            * `Explanation of lemmatization (Accessed: 01-05-2023) <https://nlp.stanford.edu/IR-book/html/htmledition/stemming-and-lemmatization-1.html>`_.
            * `Link to nltk.stem.WordNetLemmatizer documentation (Accessed: 01-05-2023) <https://www.nltk.org/api/nltk.stem.wordnet.html>`_.

Reference
=========

.. automodule:: backend.categorisation.parse
    :members:


