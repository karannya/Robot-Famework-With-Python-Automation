*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserCreationValidationKeywords.robot
Resource    ../Resources/UserRegistrationKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot
Resource     ../Resources/DataManager.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers    

*** Test Cases ***  
Create Account With Invalid Data
    UserRegistrationKeywords.Goto "Create An Account" Link
    ${invalid_scenarios} =  DataManager.Get CSV Data  ${INVALID_CREDENTIALS_PATH_CSV}
    Log     ${invalid_scenarios}
    UserCreationValidationKeywords.Create Account Scenario With Invalid Data    ${invalid_scenarios}
   
