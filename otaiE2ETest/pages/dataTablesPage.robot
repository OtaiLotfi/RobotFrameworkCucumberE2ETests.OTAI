*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${filter_icon_locator}         //*/span[@role='button']
${made_by}                     //*[text()='Made by']

*** Keywords ***
Click On The Filter Icon 
    Sleep  1s  
    Click Element    ${filter_icon_locator}

Click The Checkbox for ${name}
    ${checkbox} =  Get Checkbox   ${name}
    Wait Until Element Is Visible    ${checkbox}   5s
    Click Element    ${checkbox}


Click On The Text From The Button ${text}
    ${locator_text} =  Get Displayed Text  ${text}
    Wait Until Element Is Visible    ${locator_text}   5s
    Click Element    ${locator_text}
    
Fill the field ${text} with ${value}
    ${input_field} =  Get Input By Id  ${text}
    Clear Field Character By Character  ${input_field}
    Input Text       ${input_field}    ${value}
