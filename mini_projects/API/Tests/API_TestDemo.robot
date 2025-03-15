*** Settings ***
Library    Collections

*** Test Cases ***
work with dictionary
    &{data}=    Create Dictionary    name=abhijit    course=udemy    site=google.com
    log    ${data}    #to check if dictionary is created or not
    Dictionary Should Contain Key    ${data}    name    #checks if key if present
    Log    ${data}[name]    #to give the value of a key - alternate value
    ${url}=    Get From Dictionary    ${data}    site     #to give the value of a key- standard way
    log     ${url}