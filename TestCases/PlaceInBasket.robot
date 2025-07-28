*** Settings ***
Library    SeleniumLibrary
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot
Resource     ../Resources/DashboardKeywords.robot
Resource     ../Resources/PlaceInBasketKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers
*** Test Cases ***
AddToCart Funcationality check
    DashboardKeywords.Goto "Women" Section
    PlaceInBasketKeywords.Add An Item To Cart
    