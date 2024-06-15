***********
Web Scraper
***********

Dependencies
============

    * `tqdm <https://tqdm.github.io/>`_ | *used for command line status bar* | Version:4.65.0

.. _scraper:

.. automodule:: tools.webscrapers.scraper
    :members:

File Structure 
==============

When creating a sub class of Scraper 3 files are required in order for it to work
    * .csv file for writing the web scraped data to 
    * .txt log file for logging any failed urls to
    * .json file containing urls

an example of the structure of the urls file is.

.. code-block:: json

    {    
 
        "urls" : [
        {
            "url" : "https://someproductpage?page=",
            "page" : 2,
            "label" : "Clothing"
        },
        ]
    }

"page" is the number of pages that url has, "label" is the category of items that are being scraped,
and trivially the "url" section is the url being web scraped. 

.. note:: 
    make sure to include page query at the end of the url otherwise it will cause an error when running the scraper.

Example Implementation
======================

.. automodule:: tesco.tesco_scraper
    :members:

Example Code
============

.. literalinclude:: ../../tools/webscrapers/tesco/tesco_scraper.py
    :language: python

Implementation of **scrape**

Scraper is defines a method scrape which is abstract and has the type.

.. code-block:: python

    def scrape(self, url: str, page_no: str) -> list[str]:

How this is implemented is up to you however in this example we used BeautifulSoup and selenium.
selenium was used in order to get the html from the webpage then BeautifulSoup is a parsing library 
which allows you to extract the information from the html in which you need. You can also use a library
such as requests to get the html from a webpage. Links to useful libraries have been provided below.

    * `BeautifulSoup (Accessed: 01-05-2023) <https://www.crummy.com/software/BeautifulSoup/bs4/doc/>`_
    * `requests (Accessed: 01-05-2023) <https://selenium-python.readthedocs.io/>`_
    * `selenium (Accessed: 01-05-2023) <https://requests.readthedocs.io/en/latest/>`_
    * `urllib3 (Accessed: 01-05-2023) <https://urllib3.readthedocs.io/en/stable/>`_

.. note::
    in this example the scraper.py file was in the directory above hence why 
    sys.path.append('../') has been done to allow for the ability to import it within
    this file located in a child directory.
