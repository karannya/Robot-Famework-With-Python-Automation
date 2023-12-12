*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CredentialVerificationSignUpKeywords.robot
Resource    ../Resources/SignUpKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/BrowserKeywords.robot
Resource     ../Resources/DataManager.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers    

*** Test Cases ***  
Create Account With Invalid Data
    SignUpKeywords.Goto "Create An Account" Link
    ${invalid_scenarios} =  DataManager.Get CSV Data  ${INVALID_CREDENTIALS_PATH_CSV}
    Log     ${invalid_scenarios}
    CredentialVerificationSignUpKeywords.Create Account Scenario With Invalid Data    ${invalid_scenarios}
   
