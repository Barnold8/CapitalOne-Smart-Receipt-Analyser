******
Server
******

Dependencies
============

    * `Flask <https://flask.palletsprojects.com/>`_   | *Convert bas64 string back to image data* | Version: 2.2.2

    * * `request <https://flask.palletsprojects.com/en/2.2.x/reqcontext/>`_ |*Accept requests coming from GET and POST* |

    * * `Flask mysqldb <https://flask-mysqldb.readthedocs.io/en/latest/>`_  | *Convert bas64 string back to image data* |
   
    * * `jsonify <https://flask.palletsprojects.com/en/2.2.x/api/#module-flask.json>`_ | *Convert dictionary to JSON for responses* | 

    * * `Response  <https://flask.palletsprojects.com/en/2.2.x/api/?highlight=response#flask.Response>`_ | *Let API recipient know the status of their action* | 

    * `Flask CORS <https://flask-cors.readthedocs.io/en/latest/>`_ *Allows communications to the server* |

    * `nltk <https://www.nltk.org/>`_  | *used for lemmatizing words* | Version:3.8.1

Description
===========

This module is used for communications between the frontend, database and AI respectively. This is done by using FLASK with Python for the API, SQL for the data storage and Docker for 


Storing Data
============

For the accounts to work for this project, we need to store data. This is done via a `MySQL <https://www.mysql.com/>`_ database. This database stores
things like:

* :ref:`Accounts`.
* :ref:`Receipts`.
* :ref:`Data categorisation corrections`.
* :ref:`Passwords`.

Accounts
========

 .. _Accounts:

.. list-table:: Account
   :widths: 25 25 50
   :header-rows: 1

   * - Name
     - Data type
     - Usage
   * - UserID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Primary key for User
   * - UserName 
     - `VARCHAR <https://www.sqlservertutorial.net/sql-server-basics/sql-server-varchar/>`_
     - The users username, allows for different accounts. 

Receipts
========

.. _Receipts:

Reciepts are split into two sections, the receipts themselves as a parent and the items as children. 


.. list-table:: Receipt
   :widths: 25 25 50
   :header-rows: 1

   * - Name
     - Data type
     - Usage
   * - ReceiptID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Primary key for receipt
   * - UserID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Links user to receipt
   * - BuyDate
     - `DATETIME <https://www.dofactory.com/sql/datetime>`_
     - Stores date of receipt submission

.. list-table:: Item
   :widths: 25 25 50
   :header-rows: 1

   * - Name
     - Data type
     - Usage
   * - ItemID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Primary key for Items
   * - ReceiptID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Links item to receipt
   * - ItemName 
     - `VARCHAR <https://www.sqlservertutorial.net/sql-server-basics/sql-server-varchar/>`_
     - Human readable data for users, used to inform user.
   * - ItemCategory
     - `VARCHAR <https://www.sqlservertutorial.net/sql-server-basics/sql-server-varchar/>`_
     - What category the items belongs, used for stats on the front end.
   * - ItemPrice 
     - `DECIMAL <https://www.sqlservertutorial.net/sql-server-basics/sql-server-decimal/>`_
     - Stores the price of an item, used to help generate stats for receipt

Data categorisation corrections
===============================

.. _Data categorisation corrections:

.. list-table:: Corrections
   :widths: 25 25 50
   :header-rows: 1

   * - Name
     - Data type
     - Usage
   * - UserID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Primary key for Items
   * - ItemName
     - `VARCHAR <https://www.sqlservertutorial.net/sql-server-basics/sql-server-varchar/>`_
     - Used to identify the item with its correct category. 
   * - Correction 
     - `VARCHAR <https://www.sqlservertutorial.net/sql-server-basics/sql-server-varchar/>`_
     - The category the item **SHOULD** be

Passwords
=========

.. _Passwords:

.. list-table:: Item
   :widths: 25 25 50
   :header-rows: 1

   * - Name
     - Data type
     - Usage
   * - PassID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Primary key for HASHPASS
   * - UserID
     - `INT <https://www.sqlservertutorial.net/sql-server-basics/sql-server-int/>`_
     - Links password to user
   * - HPass
     - `TEXT <https://www.w3schools.com/sql/sql_datatypes.asp>`_
     - Hashed version of the password the user enters, this is used for authentication.

Reference
=========

.. automodule:: backend.api.server
    :members:
