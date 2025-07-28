
*** Settings ***
Library    SeleniumLibrary  
Library    CSVLibrary
Variables    ../PageObjects/SignUpLocators.py

*** Keywords ***

Create Account Scenario With Invalid Data 
   [Arguments]     ${invalid_scenarios}
   Log    value ${invalid_scenarios.__len__()}
   FOR  ${index}  IN RANGE  0  ${invalid_scenarios.__len__()}
      ${scenario}=  Set Variable    ${invalid_scenarios}[${index}]
      run keyword and continue on failure     Attempt Registration    ${scenario}
      run keyword and continue on failure     Click Submit 
      run keyword and continue on failure     Verify Create Account Page Error Message  ${Scenario}
   #run keyword and continue on failure     Clear Textboxes    ${FIRSTNAME}    ${LASTNAME}     ${EMAILID}   ${PASSWORD}     ${CONFIRM_PASSWORD}
      Reload Page
   END

Attempt Registration 
   [Arguments]  ${credentials}
    run keyword If  '${credentials[0]}' != '#BLANK'   Input Text      ${FIRSTNAME}                     ${credentials[0]}   
    run keyword If  '${credentials[1]}' != '#BLANK'   Input Text      ${LASTNAME}                      ${credentials[1]}
    run keyword If  '${credentials[2]}' != '#BLANK'   Input Text      ${EMAILID}                       ${credentials[2]} 
    run keyword If  '${credentials[3]}' != '#BLANK'   Input Text      ${PASSWORD}                      ${credentials[3]} 
    run keyword If  '${credentials[4]}' != '#BLANK'   Input Text      ${CONFIRM_PASSWORD}               ${credentials[4]}
     



Click Submit    
    Click Button    ${CREATE_ACCOUNT_BTN}
    Sleep    2S

Verify Create Account Page Error Message  
    [Arguments]   ${ERR_TEXT_MSG}   
    Page Should Contain    ${ERR_TEXT_MSG[5]}  

# Clear Textboxes
#    [Arguments]    @{textbox_locators}
#    FOR  ${locator}  IN  @{textbox_locators}
#        Log  Clearing textbox with locator: ${locator}
#        Clear Element Text  ${locator}
#    END

Reload Page
    Execute JavaScript    location.reload(true)   