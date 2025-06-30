*** Settings ***
Resource    ../utils/fixture.robot

*** Keywords ***
I Click On The Filter Icon   
   Click On The Filter Icon   

I Click The Checkbox for ${name}
  Click The Checkbox for ${name}

I Click On The Text From The Button ${text}
   Click On The Text From The Button ${text}

I Reset The Filter
   Click On The Filter Icon
   Click On The Text From The Button Reset
   Click On The Text From The Button OK

I Fill the field ${text} with ${value}
  Fill the field ${text} with ${value}
