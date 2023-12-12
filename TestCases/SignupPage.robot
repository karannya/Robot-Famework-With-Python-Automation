*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SignupKeywords.robot
Resource     ../Resources/CommonVariable.robot
Resource     ../Resources/BrowserKeywords.robot

Suite Setup    Open My Browser  ${URL}   ${BROWSER}   
Suite Teardown     Close All The Browsers   

*** Test Cases ***
User Signup With Valid Data
   SignUpKeywords.Goto "Create An Account" Link  
   SignUpKeywords.Enter "Personal Information" 
   ${dynamic_email}  Generate Dynamic Email Address    
   SignUpKeywords.Enter "Sign-in Information"     ${dynamic_email}     ${PWD}
  
   
