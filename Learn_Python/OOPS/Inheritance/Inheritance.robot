*** Settings ***
Library    custom_library.py

*** Test Cases ***
Example Test Case
    ${common_value}=    Get Combined Value
    Log    ${common_value}


### Definition
     # Inheritance allows one class to inherit the properties and methods from another class, promoting code reusability.
     # RF allows for creating a base test class to encapsulate common setup and teardown functionalities, which can be extended by specific test cases.

### Benefits :
    # Common functionality is defined once in the base class and reused in multiple subclasses, reducing redundancy.
    # Changes made to methods in the base class automatically propagate to all derived classes, simplifying updates
    # cleaner structure -> group related functionality together and make the codebase more intuitive.
    # New functionalities can be easily added by creating new subclasses without modifying existing code.

### Conclusion :
    # Inheritance helps build a structured and efficient test automation framework.
    # By creating a base library with shared methods and attributes, then extending it in specific libraries
    # achieve a modular and maintainable codebase, ultimately improving test development efficiency