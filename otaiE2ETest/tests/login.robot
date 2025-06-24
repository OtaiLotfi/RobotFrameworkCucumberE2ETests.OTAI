*** Settings ***
Resource    ../utils/fixture.robot
#Test Setup      Given I Open the Lightence App  
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Valid login
    [Tags]    OTAI   
    Given I Open the Lightence App
    Sleep  10s 
    Log To Console    URL: ${LOGIN_URL}
    Log To Console    EMAIL: ${USEREMAIL}
    Log To Console    PASS: ${USERPASSWORD}

