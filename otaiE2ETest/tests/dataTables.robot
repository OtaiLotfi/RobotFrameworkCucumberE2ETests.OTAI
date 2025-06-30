*** Settings ***
Resource    ../utils/fixture.robot

Test Setup    Given I Open Lightence UI
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI   dataTables

*** Test Cases ***
Test++: Search For Names From Basic Table
    [Tags]    Test++:031  
    Then I Search For  basic table  Basic table
    And I Assert The Displayed Text  Basic Table
    Then I Click On The Filter Icon 
    And I Click The Checkbox for Pavel
    And I Click On The Text From The Button OK
    Then I Assert The Displayed Text  Pavel Green
    And I Reset The Filter
    Then I Click On The Filter Icon 
    And I Click The Checkbox for Joe
    And I Click The Checkbox for Green
    And I Click On The Text From The Button OK
    Then I Assert The Displayed Text  Joe Black
    Then I Assert The Displayed Text  Cris Green
    And I Reset The Filter
    Then I Click On The Filter Icon 
    And I Click The Checkbox for First Name
    And I Click The Checkbox for Last Name
    And I Click On The Text From The Button OK
    And I Click On The Text From The Button Invite

Test++: Edit The Table Contents
    [Tags]    Test++:032 
    Then I Search For  editable table  Editable table
    And I Assert The Displayed Text  Editable Table
    And I Scroll To Bottom Of Page
    And I Scroll To Element ${made_by}
    Then I Click On The Text From The Button Edit
    And I Fill the field name with Lotfi
    And I Fill the field age with 28
    And I Fill the field address with Tunisia
    And I Click On The Text From The Button Save
    Then I Assert The Displayed Text  Lotfi    