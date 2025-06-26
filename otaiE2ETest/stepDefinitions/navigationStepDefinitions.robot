*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Open Lightence UI
    I Open The App
    I Login In The App  ${USEREMAIL}   ${USERPASSWORD}

I Assert Lightence UI Is Opened
    I Assert The Displayed Text  Lightence