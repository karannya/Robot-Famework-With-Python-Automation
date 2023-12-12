*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SignInKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/BrowserKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***
"SignIn" With Valid Credentials
    SignInKeywords.Goto User "Sign In"
    SignInKeywords.Enter Sign In With Credentials 
