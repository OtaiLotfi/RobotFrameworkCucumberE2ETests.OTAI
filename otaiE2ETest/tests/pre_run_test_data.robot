*** Settings ***
Resource    ../utils/fixture.robot
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI  TestData

*** Test Cases ***
Test++: Enter Test Data One
    [Tags]    Test++:001   
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened

Test++: Enter Test Data Two
    [Tags]    Test++:002  
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened

Test++: Enter Test Data Three
    [Tags]    Test++:003 
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened        