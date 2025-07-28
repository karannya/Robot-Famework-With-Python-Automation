*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserLoginValidationKeywords.robot
Resource    ../Resources/UserLoginKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***  
Validate Unsuccessful Sign In
    UserLoginKeywords.Goto User "Sign In"
    UserLoginValidationKeywords.Unsuccessful Login Using Invalid Username
    UserLoginValidationKeywords.Unsuccessful Login Using Invalid Password
    UserLoginValidationKeywords.Unsuccessful Login Using Blank Username
    UserLoginValidationKeywords.Unsuccessful Login Using Blank Password
    UserLoginValidationKeywords.Validation Of "Forgot Your Password"