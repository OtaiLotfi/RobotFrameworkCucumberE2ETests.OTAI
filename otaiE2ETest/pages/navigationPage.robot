*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${email_locator}        //input[@id='email']
${password_locator}     //input[@id='password']
${Login_locator}        //span[text()='Log In']

*** Keywords ***
I Open The App
    Open Browser With Options   ${LOGIN_URL}    chrome
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

Open Browser With Options
    [Arguments]      ${url}               ${browser}
    ${headless}=    Get Environment Variable    HEADLESS    default=False
    ${options}=     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Run Keyword If    '${headless}'=='true'    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Open Browser    ${url}    ${browser}    options=${options}
    Maximize Browser Window