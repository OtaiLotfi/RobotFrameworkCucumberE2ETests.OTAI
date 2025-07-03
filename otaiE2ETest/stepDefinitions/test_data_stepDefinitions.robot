*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Enter The Current Password ${text}
    Fill The Input Field  newPassword_password  ${text}

I Enter The New Password ${text}
    Fill The Input Field  newPassword_newPassword  ${text}

I Confirm The New Password ${text}
    Fill The Input Field  newPassword_confirmPassword  ${text}

I Fill Visa Card Input ${text_locator} With ${text}
  Fill Visa Card Input ${text_locator} With ${text}

I Click On All Displayed Visa Card Colors
   Click On All Displayed Visa Card Colors

I Wait For The Page To Load
  Sleep  5s
