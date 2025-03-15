"""Step 2 is to create specific library classes that inherit from the base class, allowing them to utilize the common
methods and variables defined in the base class.

CustomLibrary inherits from BaseLibrary, which means it has access to common_variable and common_method(),
as well as its own methods.
"""

# libraries/custom_library.py
from base_library import BaseLibrary


class CustomLibrary(BaseLibrary):
    def __init__(self):
        super().__init__()  # Call to the parent class constructor

    def specific_method(self):
        return "This is a method specific to CustomLibrary."

    def get_combined_value(self):
        return f"{self.common_variable}, {self.common_method()}"



