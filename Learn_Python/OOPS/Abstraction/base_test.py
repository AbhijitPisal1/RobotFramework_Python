# libraries/base_test.py
from abc import ABC, abstractmethod

"""
- Step 1 is to create an abstract base class use Python's abc module. 

In this example, BaseTest is an abstract base class with three abstract methods: setup, execute_test, and teardown.
Any subclass must implement these methods.

"""


class BaseTest(ABC):
    @abstractmethod
    def setup(self):
        """Method to set up test prerequisites. Must be implemented."""
        pass

    @abstractmethod
    def execute_test(self):
        """Method to execute the test. Must be implemented."""
        pass

    @abstractmethod
    def teardown(self):
        """Method to clean up after the test. Must be implemented."""
        pass
