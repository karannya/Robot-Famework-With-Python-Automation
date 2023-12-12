*** Settings ***
Library    SeleniumLibrary
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/BrowserKeywords.robot
Resource     ../Resources/DashboardKeywords.robot
Resource     ../Resources/AddToCartKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***
AddToCart Funcationality check
    DashboardKeywords.Goto "Women" Section
    AddToCartKeywords.Add An Item To Cart
    