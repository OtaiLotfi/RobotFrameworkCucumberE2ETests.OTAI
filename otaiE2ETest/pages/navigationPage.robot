*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${browser}              chrome
${email_locator}        //input[@id='email']
${password_locator}     //input[@id='password']
${Login_locator}        //span[text()='Log In']

*** Keywords ***
I Open The App
    Open Browser   ${LOGIN_URL}    ${browser}
    Maximize Browser Window

I Login In The App
    [Arguments]      ${email}               ${password}
    Sleep   5s
    Clear Field Character By Character      ${email_locator}
    Input Text       ${email_locator}       ${email}
    Clear Field Character By Character      ${password_locator} 
    Input Text       ${password_locator}    ${password}
    Click Element    ${Login_locator}

Clear Field Character By Character
    [Arguments]    ${locator}
    Click Element        ${locator}
    FOR    ${index}    IN RANGE    30
        Press Keys     ${locator}    BACKSPACE
    END    