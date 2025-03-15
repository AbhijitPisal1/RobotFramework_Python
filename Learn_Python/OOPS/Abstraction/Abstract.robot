*** Settings ***
Library    sample_test.py

*** Test Cases ***
Sample Test Case
    Setup
    Execute Test
    Teardown

### Definition:
    # Abstraction allows to define methods in a base class without providing implementations.
    # Enforcing that subclasses must implement the base class methods.
    # Helps define a clear contract or interface that can be followed by derived classes.
    # For instance, core actions and their implementations can be abstracted away in a base test class.

### Benefits of using Abstraction :
    # Clear and defined interface through abstract methods --> maintains consistency across different subclasses.
    # helps organize code logically by grouping common behaviors in the abstract class 
    # while allowing specific behaviors to be implemented in subclasses.
    # Each subclass can focus on its specific implementation, improving maintainability & readability of the code.

### Conclusion :
    # abstraction allows to define a clear interface for test classes while hiding complex implementation details.
    # Creates modular and maintainable test automation framework that is easy to understand and extend.
    # Ensures that all test classes follow the same structure, improving collaboration