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

I Scroll To Element ${text}
    ${locator_text} =  Get Displayed Text  ${text}
    Wait Until Element Is Visible    ${locator_text}
    Scroll Element Into View    ${locator_text}   

Set The Input Value
    [Arguments]   ${css_selector}   ${value} 
    ${new_value}=    Set Variable    ${value}
    Execute JavaScript    document.querySelector(${css_selector}).value = "${new_value}";

Enter The Input Value
    [Arguments]   ${text_locator}   ${value} 
    ${new_value}=    Set Variable    ${value}
    ${input_field} =  Get Location Input  ${text_locator}
    Execute JavaScript    const xpath = "${input_field}"; const result = document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; if (result) { result.value = "${new_value}"; result.dispatchEvent(new Event('input', { bubbles: true })); result.dispatchEvent(new Event('change', { bubbles: true })); }

Fill The Input Field
    [Arguments]   ${text_locator}   ${value} 
    ${input_field} =  Get Input By Id  ${text_locator}
    Input Text       ${input_field}    ${value}
