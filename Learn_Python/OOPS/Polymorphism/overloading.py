""""
Definition: Method overloading refers to the ability to define multiple methods in the same class with the same
name but different parameters (different type, number, or order of parameters). This is used to provide different
implementations for the same method name, allowing the same function to handle different types of input.

# Use Cases:
# Flexibility: It provides flexibility to the method implementations and allows a class to perform
similar tasks in different ways.
# Ease of use: It makes method calling more intuitive. Users can call the same
method name with different arguments without worrying about the underlying implementations.

# Note that Python does not support method overloading by default, but can achieve similar behavior using default arguments
"""


class Calculator:
    def add(self, a, b, c=0):
        return a + b + c


calc = Calculator()
print(calc.add(2, 3))  # Outputs: 5
print(calc.add(2, 3, 4))  # Outputs: 9
