*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/DropdownLocators.py

*** Variables ***
@{options_to_select}    Position    Product Name    Price
@{wait_messages}    Circe Hooded Ice Fleece    Ariel Roll Sleeve Sweatshirt    Selene Yoga Hoodie
*** Keywords ***
Goto "Women" Section
       Mouse Over     ${WOMEN_DROPDOWN}
       Mouse Over     ${ITEM_TOPS}
       Mouse Over     ${ITEM_HOODYSWEATSHIRT}
       Click Element     ${ITEM_HOODYSWEATSHIRT}
       Wait Until Page Contains    Shopping Options
       
Select Options From Dropdown
    
#     Select From List by Value    id=sorter    position
#     Wait Until Page Contains        Circe Hooded Ice Fleece
#     Sleep    4s
#     Select From List By Label    id=sorter    Product Name
#     Wait Until Page Contains        Ariel Roll Sleeve Sweatshirt
#     Sleep    4s
#     Select From List By Label    id=sorter    Price
#     Wait Until Page Contains       Selene Yoga Hoodie
   
     #Loop through each option and select it
     ${list_length} =    Get Length    ${options_to_select}   #Get Length keyword to determine the length of the @{options_to_select} list.
    FOR    ${index}    IN RANGE    0    ${list_length}
       ${option} =    Set Variable    ${options_to_select}[${index}]
       ${message} =    Set Variable    ${wait_messages}[${index}]
       Select From List By Label    id=sorter    ${option}
       Wait Until Page Contains    ${message}
       Sleep    4s 
     
     END       
