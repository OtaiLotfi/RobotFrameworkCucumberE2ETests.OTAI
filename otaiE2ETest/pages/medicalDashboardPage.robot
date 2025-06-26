*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${searched_item_locator}        Latest screenings
${search_locator}               //input[@placeholder='Search']
${popup_locator}                //a[@aria-label='Close popup']   

*** Keywords ***
Click The Zoom Button
    [Arguments]      ${title} 
    ${zoom_locator} =  Get Zoom Button  ${title}
    Wait Until Element Is Visible    ${zoom_locator}   5s
    Click Element    ${zoom_locator}
    Sleep  5s 

Search For 
    [Arguments]      ${value} 
    Wait Until Element Is Visible    ${search_locator}   5s
    Input Text       ${search_locator}       ${value}
    ${searched_item} =  Get Item From Search List  ${searched_item_locator}
    Wait Until Element Is Visible    ${searched_item}   5s
    Click Element    ${searched_item}

Open The ${image_number} Doctor's Card From The Map
    ${index}=    Convert To Integer    ${image_number}
    ${searched_image} =  Get Image From Map  ${index}
    Wait Until Element Is Visible    ${searched_image}   5s
    Click Element    ${searched_image}

Close the PopUp
    Wait Until Element Is Visible    ${popup_locator}   10s
    ${element}=    Get WebElement    ${popup_locator}
    Click Element    ${element}