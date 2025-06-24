*** Settings ***
Library    SeleniumLibrary
Test Setup 
Test Teardown   Close Browser
Test Tags         LotfiOTAI

*** Test Cases ***
User Opens Invoice Page And Sees Table
    [Tags]    bdd    
    Given the user opens the invoice page
    Then the invoice table should be visible

*** Keywords ***
Given the user opens the invoice page
    Open Browser    https://example.crm.refine.dev/scrumboard/kanban   chrome
    Maximize Browser Window
    #Sleep  1909s

Then the invoice table should be visible
    #Wait Until Page Contains Element    xpath=//tbody/tr[1]    10s
    Close Browser
