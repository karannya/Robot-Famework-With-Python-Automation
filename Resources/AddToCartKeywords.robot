*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/AddToCartLocators.py
Variables    ../PageObjects/MessagLocators.py

*** Keywords ***  
Add An Item To Cart
     Click Element                  ${PRODUCT_LIST_ITEM}
     Page Should Contain Button     ${ADDTOCART_BTN}
     Click Element                  ${ITEM_SIZE_SMALL}
     Click Element                  ${ITEM_COLOR}
     Input Text                     ${ADD_QUANTITY}    2
     Click Button                   ${ADDTOCART_BTN}
     Sleep    2s
     Page Should Contain            ${SUCESSFULLY_ADD_ITEM_MSG} 
     