*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***

*** Keywords ***
I Open the Lightence App
    Given I Open The App
    Then I Login In The App  ${USEREMAIL}   ${USERPASSWORD}