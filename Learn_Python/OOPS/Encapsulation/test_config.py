""" Encapsulation involves:
- Bundling the data (attributes) and methods (functions) that operate on the data into a single unit, typically a class.
- Restricting access to some of the object’s components by using access modifiers (like private and protected)
- thus preventing direct modification from outside the class.

- In this example, TestConfig encapsulates the attributes __base_url and __timeout as private using double underscores (__).
This restricts direct access from outside the class.
Instead, the class provides public methods (get_base_url, set_base_url, etc.) to access and modify these attributes in a controlled manner.
"""


# libraries/test_config.py
class TestConfig:
    def __init__(self):
        self.__base_url = "http://google.com"  # Private attribute
        self.__timeout = 30  # Private attribute

    def get_base_url(self):
        """Public method to access the base URL."""
        return self.__base_url

    def set_base_url(self, url):
        """Public method to set the base URL with validation."""
        if url.startswith("http"):
            self.__base_url = url
        else:
            raise ValueError("Invalid URL format.")

    def get_timeout(self):
        """Public method to access the timeout."""
        return self.__timeout

    def set_timeout(self, timeout):
        """Public method to set the timeout with validation."""
        if timeout > 0:
            self.__timeout = timeout
        else:
            raise ValueError("Timeout must be a positive integer.")
