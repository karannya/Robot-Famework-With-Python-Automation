*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/SignInLocators.py
Resource     ../Resources/CommonVariable.robot

*** Keywords ***
Goto User "Sign In"
     Click Link    ${SIGNIN_PATH}
     Wait Until Page contains    Customer Login
Enter Sign In With Credentials  
     Input Text    ${SIGNINID}        ${SIGNINEMAILID}
     Input Text    ${SIGNIN_PWD}     ${SIGNINPASSWORD}
     Click Button    ${SIGNIN_BTN}
     Wait Until Page contains     Welcome, AutomationUserFirstName AutomationUserLastName!