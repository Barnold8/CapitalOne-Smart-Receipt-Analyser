"""
@author: Jack Rimmer
module defines the vaping webscraper class
"""
import sys
import requests
from bs4 import BeautifulSoup
sys.path.append('../')
from scraper import Scraper

class VapingScraper(Scraper):

    """
    @author: Jack Rimmer

    Vaping Webscraper class inherits from Scraper and overides
    scraper function can then call run on an instance of this class
    to collect the data
    """

    def scrape(self, url: str, page_no: str) -> list[str]:

        """
        @author: Jack Rimmer

        function for scraping products of a vaping website

        :param url: string containing page url including empty
                    page query at the end i.e '?page='

        :param page_no: number of page for given url
                    used to be appended to end of url arg

        :return: returns a list of product names pulled of the
                webpage
        """
        items = []

        response = requests.get(f"{url}{page_no}", timeout=5)
        soup = BeautifulSoup(response.text, 'html.parser')

        titles = soup.find_all("a", {"class": "product-title"})
        for title in titles:
            name = title.find("span").getText()
            items.append(name)

        return items

if __name__ == "__main__":
    scraper = VapingScraper("data/vaping_data.csv", "data/urls.json", "data/log.txt")
    scraper.run()
