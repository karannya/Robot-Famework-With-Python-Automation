*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =  https://magento.softwaretestingboard.com/
${BROWSER} =   chrome
${PWD} =        password@123
${USERFIRSTNAME} =   USER_FIRSTNAME
${USERLASTNAME} =   USER_LASTNAME

${SIGNINEMAILID} =      automationuser@mailinator.com
${SIGNINPASSWORD} =     Testing@123
${INVALID_CREDENTIALS_PATH_CSV} =  TestData/TestData.csv

${INVALID_USERNAME}     admin@gmail.com
${INVALID_PASSWORD}     admin678
${BLANK_USERNAME}
${BLANK_PASSWORD}

