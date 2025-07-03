*** Settings ***
Resource    ../utils/fixture.robot
Library     OperatingSystem
Library     String
Library    Collections

*** Variables ***
${visa_card_color_locator}          //div[@class='ant-form-item-control-input']//div[@tabindex]

*** Keywords ***
Fill Visa Card Input ${text_locator} With ${text}
  ${input_field} =  Get Location Input  ${text_locator}
  Wait Until Element Is Visible    ${input_field}   10s
  Click Element    ${input_field}
  Input Text    ${input_field}    ${text}

Click On All Displayed Visa Card Colors
  ${count}=    Get Element Count    ${visa_card_color_locator}
  FOR    ${index}    IN RANGE    6
    Wait Until Element Is Visible  (${visa_card_color_locator})[${index + 1}]    10s
    Scroll Element Into View       (${visa_card_color_locator})[${index + 1}]
    ${el}=    Get WebElement    (${visa_card_color_locator})[${index + 1}]
    Click Element     ${el}
    Sleep  0.5s
  END        