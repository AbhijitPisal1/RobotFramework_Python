*** Settings ***
Library           DatabaseLibrary

*** Keywords ***
Connect To Database
    [Arguments]    ${db_name}
    Connect To Database   ${db_name}        #sqlite://

Execute Sql
    [Arguments]    ${sql}
    Execute Sql String   ${sql}

Fetch All
    [Arguments]    ${query}
    ${result}=    Query   ${query}
    RETURN   ${result}

Disconnect From Database
    Disconnect From Database

Should Successfully Connect To Database
    ${status}=    Get Connection
    Should Not Be None    ${status}