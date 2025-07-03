*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${Login_locator}        //span[text()='Log In']

*** Keywords ***
I Open The App
    Open Browser With Options   ${LOGIN_URL}    chrome
    Maximize Browser Window

I Login In The App
    [Arguments]      ${email}               ${password}
      Set The Input Value  "#email"      ${email} 
      Set The Input Value  "#password"   ${password}
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