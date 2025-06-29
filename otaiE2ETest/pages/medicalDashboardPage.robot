*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
${search_locator}                        //input[@placeholder='Search']
${popup_locator}                         //[@aria-label='Close popup']   
${displayed_doctors_from_calendar}       //div[@class='ant-picker-calendar-date-content']/div 

*** Keywords ***
Click The Zoom Button
    [Arguments]      ${title} 
    ${zoom_locator} =  Get Zoom Button  ${title}
    Wait Until Element Is Visible    ${zoom_locator}   5s
    Click Element    ${zoom_locator}
    Sleep  5s 

Search For 
    [Arguments]      ${value}   ${searched_item_locator}
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

Click On The Doctor's Profile 
    [Arguments]      ${text} 
    Wait Until Element Is Visible    ${search_locator}   5s
    ${searched_item} =  Get Friend Name  ${text}
    Click Element    ${searched_item}

Move From ${previous_input} To ${prefered_input}  
    I Assert The Displayed Text  ${previous_input} 
    ${previous_input_locator} =  Get Latest Screenings Input  ${previous_input}
    Click Element    ${previous_input_locator}
    Sleep  1s
    ${prefered_input_locator} =  Get Displayed Text  ${prefered_input}
    Click Element    ${prefered_input_locator}

Click On All Displayed Doctors From Calendar
  ${count}=    Get Element Count    ${displayed_doctors_from_calendar}
  FOR    ${index}    IN RANGE    6
    Wait Until Element Is Visible  (${displayed_doctors_from_calendar})[${index + 1}]    10s
    Scroll Element Into View       (${displayed_doctors_from_calendar})[${index + 1}]
    ${el}=    Get WebElement    (${displayed_doctors_from_calendar})[${index + 1}]
    Click Element     ${el}
  END     