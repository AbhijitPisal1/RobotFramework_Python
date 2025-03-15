robot
*** Settings ***
Library    libraries/test_a.py
Library    libraries/test_b.py

*** Test Cases ***
Polymorphism Sample
    ${test_a}=    Evaluate    TestA()
    ${test_b}=    Evaluate    TestB()

    ${result_a}=    ${test_a}.execute()
    ${result_b}=    ${test_b}.execute()

    Log    ${result_a}  # Outputs: Executing Test A
    Log    ${result_b}  # Outputs: Executing Test B


    #both TestA and TestB are initialized, and their execute() method is called. The actual implementation that runs depends on the object type, demonstrating polymorphism.

### Definition
    # Polymorphism allows methods to have the same name but behave differently depending on the calling object, enabling flexibility and scalability. 
    # It permits overriding methods in derived classes for specific behaviors while maintaining a common interface.

### Benefits of Polymorphism:
    # Allows different classes to implement the same method in their own way, -> reuses code more effectively without tightly coupling code to specific classes.
    # Introduce new subclasses without modifying existing code, adhering to the principles of open/closed design.
    # Changes to one class do not affect others as long as they adhere to the common interface defined in the base class.
    # Polymorphism can makes test code cleaner and more intuitive -> invoke the same method on different objects regardless of their specific class implementations.
      
### Conclusion
    # Polymorphism enables to define a unified interface for different classes while allowing each class to provide its own implementation.
    # This flexibility contributes to a more maintainable and extensible test framework, improved organization of code and ease of collaboratio
    # Create create a robust and adaptable testing environment that meets various testing needs.