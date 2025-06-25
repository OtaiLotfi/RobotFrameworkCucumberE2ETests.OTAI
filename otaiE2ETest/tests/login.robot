*** Settings ***
Resource    ../utils/fixture.robot
#Test Setup      Given I Open the Lightence App  
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Valid login
    [Tags]    OTAI   
    Given I Open the Lightence App

