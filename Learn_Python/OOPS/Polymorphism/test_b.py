# libraries/test_b.py
from libraries.base_test import BaseTest

class TestB(BaseTest):
    def execute(self):
        return "Executing Test B"

    #TestA and TestB are subclasses of BaseTest. Each class implements the execute() method with its own behavior.