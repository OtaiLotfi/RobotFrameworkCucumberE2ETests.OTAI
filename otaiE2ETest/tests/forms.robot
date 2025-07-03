*** Settings ***
Resource    ../utils/fixture.robot

Test Setup    Given I Open Lightence UI
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI   dataTables

*** Test Cases ***
Test++: Search For Names From Basic Table
    [Tags]    Test++:041  
    Then I Search For  validation form  Validation form
    And I Assert The Displayed Text  Validation form
    Then I Select The Country China
    And I Assert The Displayed Text  China
    Then I select The Colors
    And I Assert The Selected Colors
    Then I Enter The Machine Numbers 5
    And I Click The Switch Button
    Then I Check The Radio Group
    And I Scroll To Element Rate
    Then I Check The Radio Button
    Then I Check The Check Box Group
    And I Scroll To Element Submit
    Then I upload The File
    Then I Scroll To Element Control form
    And I Enter The Value Test++ Lotfi OTAI
    And I Click On The Text From The Button Add User
    Then I Enter The User Value Lotfi
    Then I Enter The Age Value 11
    And I Click On The Text From The Button OK
    And I Click On The Text From The Button Add User
    Then I Enter The User Value Nourane
    Then I Enter The Age Value 11
    And I Click On The Text From The Button OK
    And I Click On The Text From The Button Submit
    Then I Select The Area
    And I Click On The Text From The Button Save
    Then I Scroll To Element Next
    Then I Enter The Input Text Email With Lotfi
    Then I Enter The Input Text Password With 1234
    Then I Enter The Input Text Confirm Password With 1234
    And I Click On The Text From The Button Next
    Then I Scroll To Element Gender
    Then I Select The Gender Male
    Then I Enter The Input Text First Name With Lotfi
    Then I Enter The Input Text Last Name With OTAI
    Then I Scroll To Element Next
    Then I Enter The Input Text Birthday With 2019-12-19
    Then I Enter The Input Text Phone With 25252525
    Then I Enter The Input Text Email With otailotfi@test.com
    And I Click On The Text From The Button Next
    Then I Enter The Input Text Address 1 With Tunisia
    Then I Enter The Input Text Address 2 With Tunis
    Then I Enter The Input Text Zipcode With 1080
    Then I Enter The Input Text City With city
    Then I Enter The Input Text Country With country
    And I Click On The Text From The Button Next
    And I Click On The Text From The Button Done
    Then I Scroll To Element Validation form