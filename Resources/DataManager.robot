*** Settings ***
Library     ../PageObjects/UserData.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    Log     ${Data}
    [Return]  ${Data}