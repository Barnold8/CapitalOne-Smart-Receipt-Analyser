"""
@author: Jack Rimmer
module defines the Primark webscraper class
"""
import sys
import requests
from bs4 import BeautifulSoup
import regex as re
sys.path.append('../')
from scraper import Scraper

class PrimarkScraper(Scraper):

    """
    @author : Jack Rimmer

    Primark Webscraper class inherits from Scraper and overrides scrape
    can then call a on an instance run and will start webscraping
    """

    def scrape(self, url: str, page_no: str) -> list[str]:
        """
        @author: Jack Rimmer

        function for scraping products of Primarks website

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

        # large div containing grid of product items on the page
        container = soup.find(
            'div', {"class": "MuiGrid-root MuiGrid-container"})
        regex = re.compile(r"MuiTypography-root jss\d{3} MuiTypography-body2")
        # p tags containing item names
        p_tags = container.findAll('p', {"class": regex})
        for item in p_tags:
            items.append(item.text)

        items = self.__filter_colours(items)

        return items

    @staticmethod
    def __filter_colours(items):
        clean = filter(lambda x: not "colour" in x, items)
        return clean


if __name__ == "__main__":
    scraper = PrimarkScraper("data/primark_data.csv",
                             "data/urls.json", "data/log.txt")
    scraper.run()
