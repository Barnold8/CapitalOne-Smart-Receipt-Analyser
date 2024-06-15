"""
@author: Jack Rimmer
module defines the furniture webscraper class
"""
import sys
import requests
from bs4 import BeautifulSoup
sys.path.append('../')
from scraper import Scraper

class FurnitureScraper(Scraper):

    """
    @author : Jack Rimmer

    Furniture webscraper class inherits from Scraper and overrides scrape
    can then call run() on an instance of the class
    """

    def scrape(self, url: str, page_no: str) -> list[str]:

        """
        @author: Jack Rimmer

        function for scraping products of furniture website

        :param url: string containing page url including empty
                    page query at the end i.e '?page='

        :param page_no: number of page for given url
                    used to be appended to end of url arg

        :return: returns a list of product names pulled of the
                webpage
        """


        items = []  # empty list for appending items to
        response = requests.get(f"{url}{page_no}", timeout=5)
        soup = BeautifulSoup(response.text, 'html.parser')

        title_div = soup.find_all(
                "div", {"class": "product__details__title product__details__title--branded"})

        for title in title_div:
            items.append(title.find("a").find("span").getText())

        return items


if __name__ == "__main__":
    scraper = FurnitureScraper("data/furniture.csv",
                             "data/urls.json", "data/log.txt")
    scraper.run()
