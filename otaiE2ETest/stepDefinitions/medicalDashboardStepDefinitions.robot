*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Click The Zoom Button
    [Arguments]      ${title} 
    Click The Zoom Button    ${title}

 I Search For    
    [Arguments]      ${item}   ${displayed_item}
    Search For       ${item}   ${displayed_item}
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

I Move From ${previous_input_text} To ${new_input_text}
   Move From ${previous_input_text} To ${new_input_text}

I See The Percentage Of Doctor's Data
    I Click On The Doctor's Profile   Cameron Bell
    I Click On The Doctor's Profile   Kayden Hunter
    I Click On The Doctor's Profile   Annabella Morton
    I Click On The Doctor's Profile   Steve Wolfe
    I Click On The Doctor's Profile   James Moss
    I Click On The Doctor's Profile   Sara Mills

I Click On All Displayed Doctors From Calendar
      Click On All Displayed Doctors From Calendar