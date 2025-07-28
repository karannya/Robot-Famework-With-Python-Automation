*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserLoginKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***
"SignIn" With Valid Credentials
    UserLoginKeywords.Goto User "Sign In"
    UserLoginKeywords.Enter Sign In With Credentials 
