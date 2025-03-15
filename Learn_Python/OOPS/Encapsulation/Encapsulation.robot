*** Settings ***
Library    test_config.py

*** Test Cases ***
Using Encapsulation Example
    ${config}=    Evaluate    TestConfig()

    # Get the base URL
    ${base_url}=    ${config}.get_base_url()
    Log    Base URL: ${base_url}

    # Set a new base URL
    ${config}.set_base_url("http://facebook.com")
    ${new_url}=    ${config}.get_base_url()
    Log    Updated Base URL: ${new_url}

    # Set timeout
    ${config}.set_timeout(60)
    ${timeout}=    ${config}.get_timeout()
    Log    Timeout: ${timeout}


### Definition
    #Bundling the data (attributes) and methods (functions) that operate on the data into a single unit, typically a class.
    #Restricting access to some of the object’s components by using access modifiers (like private and protected) thus preventing direct modification from outside the class.
    #Classes are used to encapsulate data around specific functionalities and ensure that state is maintained correctly across methods.

### Benefits of using Abstraction :
    #Making attributes private -> prevents unintended interference and misuse outside the class -> maintaining data integrity
    #Public methods provide controlled way of accessing and modifying private attributes -> allowing for validation and business rules enforcing.
    #Maintain a modular code base i.e Changes to the class implementation can be made without affecting external code (public interface remains consistent)
    #Internal workings of a class can change without affecting the code that relies on it, making maintenance easier.

### Conclusion : 
    #Encapsulation in a Robot Framework Python test automation project allows to create classes that protect their internal state and provide controlled mechanisms for interaction.
    #By encapsulating attributes and methods, we enhance the robustness of your test automation framework, ensuring data integrity and providing a clean, maintainable codebase.
    #This approach promotes good programming practices and contributes to a well-structured testing environment.