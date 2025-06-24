*** Settings ***
Resource    ../utils/fixture.robot

*** Variables ***
#${email}      hello@altence.com
#${password}   some-test-pass

*** Keywords ***
I Open the Lightence App
    Given I Open The App
    #Then I Login In The App  ${USEREMAIL}   ${USERPASSWORD}