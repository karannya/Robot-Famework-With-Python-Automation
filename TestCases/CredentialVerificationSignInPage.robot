*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CredentialVerificationSignInKeywords.robot
Resource    ../Resources/SignInKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/BrowserKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***  
Validate Unsuccessful Sign In
    SignInKeywords.Goto User "Sign In"
    CredentialVerificationSignInKeywords.Unsuccessful Login Using Invalid Username
    CredentialVerificationSignInKeywords.Unsuccessful Login Using Invalid Password
    CredentialVerificationSignInKeywords.Unsuccessful Login Using Blank Username
    CredentialVerificationSignInKeywords.Unsuccessful Login Using Blank Password
    CredentialVerificationSignInKeywords.Validation Of "Forgot Your Password"