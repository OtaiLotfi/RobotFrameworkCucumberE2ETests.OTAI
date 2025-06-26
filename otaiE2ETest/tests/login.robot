*** Settings ***
Resource    ../utils/fixture.robot
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Valid login
    [Tags]    Test++:011   
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened