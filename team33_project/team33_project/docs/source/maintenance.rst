***********
Maintenance
***********

Within this section, we explain how further maintenance can be made to this software, outlining the specific functions that must be implemented and which ones are internal implementation details.

Backend Modularity
==================

In this project, we have developed many of the components as standalone modules. Each of these provide a set of functions to allow for each of the modules to interact with each-other. We will mention these specific methods further on in the section as these must be kept the same in order to keep the integrity of the system however other functions within the modules can be viewed as internal implementation details and can be changed more freely.

Categorisation data set interchangeability
==========================================

Current category support:

    #. Food & Drink
    #. Confectionary / Cakes / Biscuits
    #. Cleaning
    #. Alcohol & Smoking
    #. Baby
    #. Entertainment
    #. Clothing
    #. Furniture
    #. Gambling
    #. Health & Beauty
    #. Household
    #. Jewellery
    #. Pets
    #. Technology

The categorisation module of this project uses a csv called ``master.csv``. This contains a large number of preprocessed labelled strings which are used by the categorisation module to determine the label of a new string. This can be changed if needed during future maintence, either sourcing data using the :doc:`webscraping framework<webscraping>` provided during this projects or by other means. Once the raw data is collected, it must be put into a ``csv`` file of the form:

.. list-table:: Example master.csv
    :widths: 100 100
    :header-rows: 1

    * - name
      - label
    * - crisps
      - Food & Drink
    * - face wipes
      - Health & Beauty


This must be then be pre-processed using the ``parse.py`` library in order to clean the data. this new ``master.csv`` can then be used. This is an important feature that will need to be done in order to keep up with the ever-changing retail market and maintain the ability to categorise new brand names.

Addition of new categories
==========================

The ability to extend supported categories was something of high priority within this project. This can be done by simply adding pre-labelled data for this category to the dataset. Upon doing this, all the functionality of the backend will remain the same with added support for this new category. With regards to the implications, the only section of code that would require updating would be the frontend recategorisation modal, as there is an array called ``categories`` containing all the supported categories which the name would need to be added to.
