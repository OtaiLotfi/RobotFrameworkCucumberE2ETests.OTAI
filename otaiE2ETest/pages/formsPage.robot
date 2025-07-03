*** Settings ***
Resource    ../utils/fixture.robot
Library     OperatingSystem
Library     String
Library    Collections

*** Variables ***
${Gender_locator}              //*[text()='Select']/../..//span[@class='ant-select-selection-item']
${color_locator}               //div[@class='ant-select-selection-overflow']
${switch_button_locator}       //button[@role='switch']
${radio_group_locator}         //span[text()=' 2']/..//input 
${radio_button_locator}        (//span[text()=' 1'])[2]
${check_box_group_locator}     //input[@value='C']/..//input  
${input_file_locator}          //input[@type="file"]
${area_locator}                //*[text()='Area']/../..//span[@class='ant-select-selection-search']
${area_text_locator}           (//*[text()='Beijing'])[2]
${file_path}                   otaiE2ETest/files/Test++.jpg
${gender_locator}              //*[text()='Male']/../..//span[@class='ant-select-selection-search']

*** Keywords ***
Upload The File
    ${absolute_path}=    Evaluate    os.path.abspath("${file_path}")    modules=os
    Wait Until Page Contains Element        ${input_file_locator}    15s
    Choose File    ${input_file_locator}    ${absolute_path}

Select Dropdown Text
    [Arguments]  ${text_locator}  ${text}
    ${input_field} =  Get Drop Down Input  ${text_locator}
    Wait Until Element Is Visible    ${input_field}   5s
    Click Element    ${input_field}
    I Click On The Text From The Button ${text}

Enter The Input Text ${text_locator}
    [Arguments]   ${text}
    Enter The Input Value  ${text_locator}    ${text}
    