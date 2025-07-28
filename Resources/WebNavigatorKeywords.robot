*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open My Browser 
    [Arguments]    ${URL}   ${BROWSER}
    #Intialize Selenium
    Set Selenium Speed     .2s
    Set Selenium timeout    10s

    Open Browser   ${URL}   ${BROWSER}
    Maximize Browser Window
    Wait Until Page contains   Sign In

Close All The Browsers
    Close Browser