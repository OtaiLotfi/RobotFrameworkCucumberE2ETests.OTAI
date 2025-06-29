*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Click The Zoom Button
    [Arguments]      ${title} 
    Click The Zoom Button    ${title}

 I Search For    
    [Arguments]      ${item} 
    Search For    ${item}
    Click On White Space

I Open The ${item} Doctor's Card From The Map
    Open The ${item} Doctor's Card From The Map

I Assert The Doctor's Details
    [Arguments]      ${doctor}   ${specifity}
    I Assert The Displayed Text  ${doctor}
    I Assert The Displayed Text  ${specifity}
    Sleep  2s

I Click On The Doctor's Profile 
   [Arguments]      ${text}
   Click On The Doctor's Profile   ${text}