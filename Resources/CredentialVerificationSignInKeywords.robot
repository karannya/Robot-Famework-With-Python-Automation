*** Settings ***
Library    SeleniumLibrary 
Variables    ../PageObjects/SignInLocators.py
Variables    ../PageObjects/MessagLocators.py
Resource     ../Resources/CommonVariable.robot 

*** Keywords ***
Unsuccessful Login Using Invalid Username
    Login With Wrong Credential     ${INVALID_USERNAME}    ${SIGNINPASSWORD}
    Verify The Error Message For Invalid Credential
    Reload Page
Unsuccessful Login Using Invalid Password    
    Login With Wrong Credential     ${SIGNINEMAILID}       ${INVALID_PASSWORD}
    Verify The Error Message For Invalid Credential
    Reload Page
Unsuccessful Login Using Blank Username   
    Login With Wrong Credential     ${BLANK_USERNAME}      ${SIGNINPASSWORD}
    Verify The Error Message Blank Credential
    Reload Page
Unsuccessful Login Using Blank Password   
    Login With Wrong Credential    ${SIGNINEMAILID}       ${BLANK_PASSWORD}
    Verify The Error Message Blank Credential
    Reload Page

Login With Wrong Credential    
    [Arguments]     ${username}       ${password}
    Input Text      ${SIGNINID}        ${username} 
    Input Text      ${SIGNIN_PWD}       ${password}
    Click Button    ${SIGNIN_BTN}
Verify The Error Message For Invalid Credential   
    Page Should Contain    ${SIGNIN_ERR_TEXT_MSG}
Verify The Error Message Blank Credential 
  Page Should Contain      ${ERR_TEXT_MSG}      
Reload Page
    Execute JavaScript    location.reload(true)
    Sleep    2S   
Validation Of "Forgot Your Password"
    Click Element    ${FORGOT_PASSWORD_LINK}  
    Input Text    ${RESET_EMAIL}    ${SIGNINEMAILID} 
    Click Button  ${RESET_PASSWORD_BTN}
    Page Should Contain    ${RESET_PWD_TEXT_MSG}
