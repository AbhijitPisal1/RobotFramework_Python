# libraries/sample_test.py
from base_test import BaseTest

""" Step 2 is to implement concrete classes that inherit from the abstract base class.
These classes must provide implementations for the abstract methods defined in the base class.

Here, SampleTest is a concrete class that inherits from BaseTest and provides implementations for the setup, 
execute_test, and teardown methods.
"""


class SampleTest(BaseTest):
    def setup(self):
        print("Setting up the test environment.")

    def execute_test(self):
        print("Executing the test logic.")

    def teardown(self):
        print("Cleaning up after the test.")
