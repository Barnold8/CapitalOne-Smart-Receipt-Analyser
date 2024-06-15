"""
@author: Jack Rimmer

module contains Scraper class for allowing easy implementation
of webscrapers
"""
import json
import sys
import os
import csv
from abc import abstractmethod
from tqdm import tqdm

class Scraper:
    """
    @author: Jack Rimmer

    Scraper is a class that implements the shared functionality of
    all the webscraping tools child classes i.e specified webscrapers
    then only need to override the scrape function where given a page
    and page no returns a list of products on the page. then can call
    run() method to start webscraping

    """
    def __init__(self, csv_path: str, json_path: str, log_path: str):
        self.csv_path = csv_path
        self.json_path = json_path
        self.log_path = log_path

    def run(self):
        """
        @author: Jack Rimmer

        main function for scraper
        for each url scrapes each page up to page number defined in file
        writes all the returned data into a csv file and logs any failed errors
        """

        header = ['name', 'label']
        data = self.__read_json(self.json_path)

        with open(self.csv_path, "w", encoding="UTF8") as file:
            writer = csv.writer(file)
            writer.writerow(header)
            for json_obj in tqdm(data):
                page_no = json_obj["page"]
                url = json_obj["url"]
                label = json_obj["label"]
                for page in range(1, page_no+1):
                    data = self.scrape(url, page)
                    if not data:
                        self.__log_errors("data/log.txt", url, page)
                        tqdm.write(f"FAILED: {url} {page}")
                    else:
                        tqdm.write(f"{url} {page}")
                        self.__write_products(data, label, writer)

        print("TASK: FINISHED")

    @staticmethod
    def __log_errors(file_path: str, page_name: str, page: str) -> bool:
        """
        @author: Jack Rimmer

        function is just formatted file writing for when a call to scrape_url
        does not yield any data.

        :param file_path: path to file output is to be logged to
        :param page_name: url of the page that failed
        :param page: page number which is contained at the end of the url

        :return: returns a bool if writes successfully
        """

        # throw error if file doesn't exist
        if os.path.isfile(file_path) is False:
            print(f"ERROR: file {file_path} does not exist !", file=sys.stderr)
            return False

        with open(file_path, 'a', encoding="utf-8") as file:
            file.write(f"MISS: {page_name} {page}\n")
        return True

    @staticmethod
    def __read_json(file_path: str) -> list[dict]:
        """
        @author: Jack Rimmer

        function is for reading the json file containing all the pre labelled urls

        :param file_path: path to json file containing the urls

        :return: json object containing the file data
        """

        # throw error if file doesn't exist
        if os.path.isfile(file_path) is False:
            print(f"ERROR: file {file_path} does not exist !", file=sys.stderr)
            return False

        with open(file_path, "r", encoding="utf-8") as file:
            data = json.loads(file.read())["urls"]
            return data

    @staticmethod
    def __write_products(products, label, writer) -> bool:
        """
        @author: Jack Rimmer

        function is for writer a list of products into the csv file

        :param products: list of products names returned from scrape_url
        :param label: label defined for that set of products from the json file
        :param writer: csv writer object for writing each product

        :return: returns a bool if writes successfully
        """

        for product in products:
            row = [product, label]
            writer.writerow(row)
        return True

    @abstractmethod
    def scrape(self, url: str, page_no: str) -> list[str]:
        """
        this method is to be overridden in child class
        """
