*** Settings ***
Documentation    This project deals with passing dictionary variables at run time useful when multiple environments tested
Resource  Resources/Common.robot
Resource  Resources/ImbApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# to run this given scripts by calling the qa environment use below command
 # python -m robot -d results -v ENVIRONMENT:qa Test1.robot

*** Variables ***
${ENVIRONMENT} =  dev
${BROWSER} =  ie
&{URL}  dev=http://dev.internetmillionaireblueprint.com  qa=http://qa.internetmillionaireblueprint.com  stage=http://stage.internetmillionaireblueprint.com  prod=http://www.amazon.com
&{CUSTOMER_USER}  FirstName=Bryan  LastName=Lamb  Dob=1/1/1900  Email=bryan@robotframework.com  Password=MyPassword!
&{ADMIN_USER}  FirstName=Joe  LastName=Smith  Dob=1/1/1900  Email=admin@robotframework.com  Password=AdminPassword!

*** Test Cases ***
Should be able to view landing page
    [Tags]  landing
    ImbApp.Navigate to Landing Page
    Sleep  5s

Should be able to register for new account
    [Tags]  register
    ImbApp.Navigate to Landing Page
    Sleep  5s
    ImbApp.Create New Account  ${CUSTOMER_USER}
