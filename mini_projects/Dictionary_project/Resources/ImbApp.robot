*** Settings ***
Library  Selenium2Library
Resource  Resources/Landing.robot
Resource  Resources/TopNav.robot
Resource  Resources/Register.robot

*** Keywords ***
Navigate to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Create New Account
    [Arguments]  ${UserData}
    TopNav.Click Registration Link
    Register.Verify Page Loaded
    Register.Fill Page and Submit  ${UserData}

Create New Account with Invalid Data
    [Arguments]  ${UserData}
    TopNav.Click Registration Link
    Register.Verify Page Loaded
    Register.Fill Email  ${UserData.Email}
    Register.Fill Password  abc