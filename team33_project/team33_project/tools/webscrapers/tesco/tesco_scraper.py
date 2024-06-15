"""
@author: Jack Rimmer
module defines the tesco webscraper class
"""
import sys
from time import sleep
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from bs4 import BeautifulSoup
sys.path.append('../')
from scraper import Scraper


class TescoScraper(Scraper):

    """
    @author : Jack Rimmer

    Tesco Webscraper class inherits from Scraper and overrides scrape
    can then call a on an instance run and will start webscraping
    """

    def scrape(self, url: str, page_no: str) -> list[str]:
        """
        @author: Jack Rimmer

        function for scraping products of Tesco's website

        :param url: string containing page url including empty
                    page query at the end i.e '?page='

        :param page_no: number of page for given url
                    used to be appended to end of url arg

        :return: returns a list of product names pulled of the
                webpage
        """

        # defining options for webdriver
        options = Options()
        options.headless = True

        # used selenium as needed to render javascript
        driver = webdriver.Firefox(options=options)
        driver.get(f"{url}{page_no}")
        sleep(3)
        inner_html = driver.execute_script(
            "return document.getElementsByTagName('html')[0].innerHTML")
        # raw HTML to BeautifulSoup object
        soup = BeautifulSoup(inner_html, 'html.parser')
        driver.quit()

        # find all the product list items
        products = soup.find_all("li", {"class": "product-list--list-item"})
        items = []  # list of tuples (name, price)

        for item in products:
            title = item.find("h3", {"class": "styles__H3-oa5soe-0 bCKNNq"})
            items.append(title.text)

        return items


if __name__ == "__main__":
    scraper = TescoScraper("data/tesco_data.csv",
                           "data/urls.json", "data/log.txt")
    scraper.run()
