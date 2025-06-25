*** Settings ***
Resource    ../utils/fixture.robot
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Valid login
    [Tags]    OTAI   
    Given I Open The Application