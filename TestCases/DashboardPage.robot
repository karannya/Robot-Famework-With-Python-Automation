*** Settings ***
Library    SeleniumLibrary
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot
Resource     ../Resources/DashboardKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers

*** Test Cases ***
Check dropdown functionality
  DashboardKeywords.Goto "Women" Section
  DashboardKeywords.Select Options From Dropdown
 