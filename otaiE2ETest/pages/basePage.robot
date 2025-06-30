*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${email_locator}        //input[@id='email']
${password_locator}     //input[@id='password']
${Login_locator}        //span[text()='Log In']
${toggle_icon}          //span[@aria-label='right']

*** Keywords ***
I Assert The Displayed Text
    [Arguments]      ${text} 
    Wait Until Page Contains    ${text}    5s

I Open The Section 
    [Arguments]      ${text} 
    Wait Until Element Is Visible    ${toggle_icon}    10s
    Click Element    ${toggle_icon}
    #Wait Until Element Is Visible    ${text}           10s
    Sleep  5s
    ${locator_text} =  Get Displayed Text  ${text}
    Click Element    ${locator_text}

Click On White Space
    [Arguments]    ${x}=0    ${y}=0
    Execute JavaScript    document.elementFromPoint(${x}, ${y}).click();    

I Scroll To Bottom Of Page
    Sleep    0.5s
    Execute JavaScript    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
    Sleep    1s

I Scroll To Element ${element}
    Wait Until Element Is Visible    ${element}
    Scroll Element Into View    ${element}       