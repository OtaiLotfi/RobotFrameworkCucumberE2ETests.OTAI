*** Settings ***
Resource    ../utils/fixture.robot

Test Setup    Given I Open Lightence UI
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Create A User Profile
    [Tags]    Test++:001   
    When I Click On The Text From The Button Chris J
    Then I Assert The Displayed Text  Profile
    And I Click On The Text From The Button Profile
    And I Click On The Text From The Button Personal Info
    Then Click On White Space
    Then I Enter The Input Text First Name With Lotfi
    Then I Enter The Input Text Last Name With OTAI
    Then I Enter The Input Text Nickname With lou
    Then I Enter The Input Text Birthday With 01/26/2022
    Then I Enter The Input Text Email With otai@test.com
    And I Scroll To Element Other info
    Then I Enter The Input Text City With city
    Then I Enter The Input Text Address 1 With Tunisia
    Then I Enter The Input Text Address 2 With Tunis
    Then I Enter The Input Text Zipcode With 1080
    And I Scroll To Element Social links
    Then I Enter The Input Text Website With test.com
    Then I Enter The Input Text Social links With @Test++
    And I Scroll To Element Chris Johnson
    And I Click On The Text From The Button Security Settings
    Then I Enter The Current Password some-test-pass
    Then I Enter The New Password Test++@OTAI!
    Then I Confirm The New Password Test++@OTAI!
    And I Scroll To Element Payments
    And I Click On The Text From The Button Payments
    And I Wait For The Page To Load
    And I Click On The Text From The Button Add New Card
    Then I Fill Visa Card Input Exp. Date With 05/05
    Then I Fill Visa Card Input CVV With 025
    Then I Fill Visa Card Input Cardholder Name With Lotfi OTAI
    Then I Fill Visa Card Input Card Number With 4255 0505 2025 0001
    And Click On All Displayed Visa Card Colors
    And I Click On The Text From The Button Save
    Then I Assert The Displayed Text  Lotfi OTAI

Test++: Enter Test Data Two
    [Tags]    Test++:002  
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened

Test++: Enter Test Data Three
    [Tags]    Test++:003 
    Given I Open Lightence UI
    And I Assert Lightence UI Is Opened        