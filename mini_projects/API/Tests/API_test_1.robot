*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Variables ***
${base_url}    https://rahulshettyacademy.com
${book_id}
${book_name}    robotframework

*** Test Cases ***
Play around with Dictionary
    &{dict}=    Create Dictionary    name=Mike    course=robot    website=www.google.com
    Log    ${dict}
    Dictionary Should Contain Key    ${dict}    name
    Log To Console    ${dict}[name]
    ${URL}=    Get From Dictionary    ${dict}    website

Add book into library database
    ${num1}=  Evaluate    random.choice(range(1,30000))    random
    ${num2}=  Evaluate    random.choice(range(1,700))    random
    Log    ${num1}
    Log    ${num2}
    &{dict_1}=    Create Dictionary    name=${book_name}     isbn=${num1}    aisle=${num2}    author=Mike
    ${response}=   POST    ${base_url}/Library/Addbook.php    json=${dict_1}    expected_status=200
    Log    ${response.json()}
    Dictionary Should Contain Key    ${response.json()}    ID    
    ${book_id}=    Get From Dictionary       ${response.json()}    ID
    Set Global Variable       ${book_id}      
    log    ${book_id}
    Should Be Equal As Strings    successfully added    ${response.json()}[Msg]
    Status Should Be    200    ${response}
    
get the book details which is added
    ${get_response}=    GET    ${base_url}/Library/GetBook.php    params=ID=${book_id}    expected_status=200
    Log    ${get_response.json()}
    should be equal as strings     ${book_name}	    ${get_response.json()}[0][book_name]


Delete the book from the database
    &{delete_req}=	create dictionary	ID=${book_id}
    ${delete_response}=	POST	${base_url}/Library/DeleteBook.php	json=${delete_req}	expected_status=200
    log	${delete_response.json()}
    should be equal as strings	book is successfully deleted	${delete_response.json()}[msg]
