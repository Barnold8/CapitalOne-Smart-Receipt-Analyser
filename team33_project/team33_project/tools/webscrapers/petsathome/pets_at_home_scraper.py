"""
@author: Jack Rimmer

module defines the Primark webscraper class
"""
import sys
import requests
from bs4 import BeautifulSoup
sys.path.append('../')
from scraper import Scraper

class PetsAtHomeScraper(Scraper):

    """
    @author : Jack Rimmer

    Petsathome Webscraper class inherits from Scraper and overrides scrape
    can then call a on an instance run and will start webscraping
    """

    def scrape(self, url: str, page_no: str) -> list[str]:

        """
        @author: Jack Rimmer

        function for scraping products of pets at home website

        :param url: string containing page url including empty
                    page query at the end i.e '?page='

        :param page_no: number of page for given url
                    used to be appended to end of url arg

        :return: returns a list of product names pulled of the
                webpage
        """


        # sleep to prevent rate limiting

        items = []  # empty list for appending items to
        response = requests.get(f"{url}{page_no}", timeout=5)
        soup = BeautifulSoup(response.text, 'html.parser')

        # domain is both section tags containing items
        # domain[0] is main body of items on page
        # domain[1] is related body products at the bottom of page

        domain = soup.find_all(
            "section", {"class": "layout-product-tile-holder"})

        try:
            titles = domain[0].find_all("h4", {"class": "product-tile__title"})
        except AttributeError:
            return []

        for item in titles:
            items.append(item.getText())

        return items

if __name__ == "__main__":
    scraper = PetsAtHomeScraper("data/pets_at_home_data.csv",
                                "data/urls.json", "data/log.txt")
    scraper.run()
