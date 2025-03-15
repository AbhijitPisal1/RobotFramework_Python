*** Settings ***
Resource    Keywords.robot
Resource    variables.robot

*** Test Cases ***
Scenario: Connect to the database
    Given I connect to the database
    Then I should successfully connect to the database

Scenario: Fetch data from regions
    Given I connect to the database
    When I execute the SQL statement to fetch all regions
    Then the result should not be empty
    And I disconnect from the database

Scenario: Verify countries count
    Given I connect to the database
    When I execute the SQL statement to count countries
    Then the count should be ${EXPECTED_COUNTRIES_COUNT}
    And I disconnect from the database

*** Keywords ***
I connect to the database
    Connect To Database   ${DB_NAME}

I execute the SQL statement to fetch all regions
    ${sql}=    Set Variable    SELECT * FROM regions;
    Execute Sql   ${sql}

I execute the SQL statement to count countries
    ${sql}=    Set Variable    SELECT COUNT(*) FROM countries;
    Execute Sql   ${sql}

the result should not be empty
    ${result}=    Fetch All   SELECT * FROM regions;
    Should Not Be Empty    ${result}

the count should be ${expected_count}
    [Arguments]    ${expected_count}
    ${result}=    Fetch All   SELECT COUNT(*) FROM countries;
    Should Be Equal As Numbers    ${result[0][0]}    ${expected_count}

I disconnect from the database
    Disconnect From Database

I should successfully connect to the database
    Should Successfully Connect To Database