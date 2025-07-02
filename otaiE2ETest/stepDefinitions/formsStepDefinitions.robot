*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Select The Country ${text}
    Select Dropdown Text  Select  ${text}

I select The Colors
    Wait Until Element Is Visible    ${color_locator}   5s
    Click Element    ${color_locator}
    I Click On The Text From The Button Green
    I Click On The Text From The Button Red
    I Click On The Text From The Button Blue
    Click Element    ${color_locator}

I Assert The Selected Colors
   I Assert The Displayed Text  Green
   I Assert The Displayed Text  Red
   I Assert The Displayed Text  Blue

I Enter The Machine Numbers ${Number}
   Fill The Input Field  validateForm_input-number  ${Number}  

I Click The Switch Button
    Click Element    ${switch_button_locator}

I Check The Radio Group
    Click Element    ${radio_group_locator}

I Check The Radio Button
    Wait Until Element Is Visible    ${radio_button_locator}   5s
    Click Element    ${radio_button_locator}
 
I Check The Check Box Group
    Click Element    ${check_box_group_locator}

I upload The File
  Upload The File

I Enter The Value ${text}
    Fill The Input Field  controlForm_group  ${text}  

I Enter The User Value ${text}
    Fill The Input Field  userForm_name  ${text}  

I Enter The Age Value ${text}
    Fill The Input Field  userForm_age  ${text}  

I Select The Area
    Wait Until Element Is Visible    ${area_locator}   10s
    Click Element    ${area_locator}
    Wait Until Element Is Visible    ${area_text_locator}   10s
    Click Element    ${area_text_locator}

I Select The Gender ${text}
    Wait Until Element Is Visible    ${Gender_locator}   5s
    Click Element    ${Gender_locator}
    I Click On The Text From The Button ${text}

I Enter The Input Text ${text_locator} With ${text}
  Enter The Input Text ${text_locator}  ${text}
