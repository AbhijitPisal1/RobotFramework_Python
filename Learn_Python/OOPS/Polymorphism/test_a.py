"""TestA and TestB are subclasses of BaseTest. Each class implements the execute() method with its own
behavior."""

# libraries/test_a.py
from base_test import BaseTest

class TestA(BaseTest):
    def execute(self):
        return "Executing Test A"

