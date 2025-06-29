*** Settings ***
Resource    ../utils/fixture.robot

Test Setup    Given I Open Lightence UI
Test Teardown   Close Browser
Test Tags       Test++   LotfiOTAI

*** Test Cases ***
Test++: Search For Doctors Within The Map
    [Tags]    Test++:021  
    Then I Open The Section  Medical Dashboard
    Then I Open The ${2} Doctor's Card From The Map
    And I Assert The Doctor's Details  Kayden Hunter  Dermatologist
    Then I Open The ${3} Doctor's Card From The Map
    And I Assert The Doctor's Details  Annabella Morton  Oncologist
    Then I Open The ${1} Doctor's Card From The Map
    And I Assert The Doctor's Details  Cameron Bell  Surgeon
    And I Click The Zoom Button  Zoom out
    Then I Open The ${6} Doctor's Card From The Map
    And I Assert The Doctor's Details  Francisco Venancio  Neurologist
    Then I Open The ${4} Doctor's Card From The Map
    And I Assert The Doctor's Details  James Moss  Therapist
    Then I Open The ${5} Doctor's Card From The Map
    And I Assert The Doctor's Details  Sara Mills  Ophthalmologist
    #Then I Open The ${7} Doctor's Card From The Map
    #And I Assert The Doctor's Details  Jorden Cannon  common.undefined
    And I Click The Zoom Button  Zoom in

Test++: Search For Doctors' Data Using The Search Function
    [Tags]    Test++:022  
    Then I Search For  latest screenings  Latest screenings
    And I Assert The Displayed Text  Latest screenings
    Then I Click On The Doctor's Profile  Cameron Bell
    And I Click On The Doctor's Profile   Kayden Hunter
    And I Click On The Doctor's Profile   Annabella Morton
    And I Click On The Doctor's Profile   Steve Wolfe
    And I Click On The Doctor's Profile   James Moss
    And I Click On The Doctor's Profile   Sara Mills
    When I Move From June To January  
    Then I See The Percentage Of Doctor's Data
    When I Move From January To May
    Then I See The Percentage Of Doctor's Data
    When I Move From May To August
    Then I See The Percentage Of Doctor's Data
    When I Move From August To July
    Then I See The Percentage Of Doctor's Data
    When I Move From July To April
    Then I See The Percentage Of Doctor's Data
    When I Move From April To March
    Then I See The Percentage Of Doctor's Data
    And I Move From March To February
    Then I See The Percentage Of Doctor's Data

Test++: Search For Doctors' Data Using The Search Function
    [Tags]    Test++:023  
    Then I Search For  treatment plan  Treatment plan
    And I Assert The Displayed Text  Treatment plan
    And I Click On All Displayed Doctors From Calendar    