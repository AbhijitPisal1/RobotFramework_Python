"""Base library class that encapsulates common functionality needed across multiple libraries.
This base class can define generic methods that can be reused, reducing code duplication.

In this example, step 1 is to create BaseLibrary that serves as the parent class with common methods that can be
accessed by its subclasses."""


# libraries/base_library.py
class BaseLibrary:
    def __init__(self):
        self.common_variable = "Common Value"

    def common_method(self):
        return "This is a common method."
