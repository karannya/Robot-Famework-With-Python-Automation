*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/SignUpLocators.py

Library    DateTime
Library    OperatingSystem
Library    String
Resource     ../Resources/CommonVariable.robot

*** Keywords ***
Goto "Create An Account" Link
   Click Link                  ${CREATE_ACCUNTK_LINK}
   Wait Until Page contains    Create New Customer Account
Enter "Personal Information" 
    Input Text    ${FIRSTNAME}        ${USERFIRSTNAME}
    Input Text    ${LASTNAME}        ${USERLASTNAME}

Generate Dynamic Email Address
    ${current_time}=    Get Current Date    result_format=%Y%m%d%H%M%S
    ${random_username}=    Evaluate    'annya{}'.format(${current_time})
    ${email}=    Set Variable    ${random_username}@mailinator.com
    Log    Generated Email: ${email}
    [Return]   ${email}   
Enter "Sign-in Information" 
    [Arguments]    ${dynamic_email}   ${pwd} 
    
    Input Text    ${EMAILID}        ${dynamic_email}
    Input Text    ${PASSWORD}     ${pwd}
    Input Text    ${CONFIRM_PASSWORD}     ${pwd}
    Click Button    ${CREATE_ACCOUNT_BTN}
    Wait Until Page contains    Thank you for registering with Main Website Store.

   