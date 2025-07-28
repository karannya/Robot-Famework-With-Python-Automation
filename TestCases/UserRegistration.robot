*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserRegistrationKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/WebNavigatorKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers   

*** Test Cases ***
User Signup With Valid Data
   UserRegistrationKeywords.Goto "Create An Account" Link  
   UserRegistrationKeywords.Enter "Personal Information" 
   ${dynamic_email}  Generate Dynamic Email Address    
   UserRegistrationKeywords.Enter "Sign-in Information"     ${dynamic_email}     ${PWD}
  
   
