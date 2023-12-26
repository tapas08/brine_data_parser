import unittest

from data_parser import is_valid_data, get_numbers

class TestDataParser(unittest.TestCase):
    def setUp(self) -> None:
        self.sales_data = './data/customer.csv'

    def test_data_validity(self):
        self.assertTrue(is_valid_data(self.sales_data), 'Sales data csv is valid')

    def test_report_generation(self):
        self.assertIsNone(get_numbers(self.sales_data), 'Report generated successfully')
