*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${email_locator}        //input[@id='email']
${password_locator}     //input[@id='password']
${Login_locator}        //span[text()='Log In']

*** Keywords ***
I Assert The Displayed Text
    [Arguments]      ${text} 
    Wait Until Page Contains    ${text}    5s

I Open The Section 
    [Arguments]      ${text} 
    ${locator_text} =  Get Displayed Text  ${text}
    Wait Until Element Is Visible    ${locator_text}    10s
    Click Element    ${locator_text}

Click On White Space
    [Arguments]    ${x}=0    ${y}=0
    Execute JavaScript    document.elementFromPoint(${x}, ${y}).click();    