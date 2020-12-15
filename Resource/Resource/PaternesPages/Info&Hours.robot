*** Settings ***
Library  Selenium2Library
*** Variables ***
${Hours&Info Button} =  xpath=/html/body/app-my-app/app-layout/div/div[1]/app-sidebar-cmp/div[2]/ul/li[2]/a
${Pay At Restarent/pay Button} =  //*[@id="mat-select-6"]
${Pay At Restarent/pay Button Yes} =  //*[@id="mat-option-35"]/span
${Pay At Restarent/pay Button No} =  //*[@id="mat-option-36"]/span
${Submit Button} =  //*[@id="BusinessInfoFormlink"]/div/div/div[3]/div/div[2]/form/button
*** Keywords ***
Pay At Restarent Yes
    Set Selenium Implicit Wait  20 second
    click element   ${Hours&Info Button}
    Set Selenium Implicit Wait  5 second
    Scroll Element Into View  ${Pay At Restarent/pay Button}
    click element  ${Pay At Restarent/pay Button}
    Set Selenium Implicit Wait  2 second
    click element  ${Pay At Restarent/pay Button Yes}
    Scroll Element Into View  ${Submit Button}
    click element  ${Submit Button}
Pay At Restarent No
    Set Selenium Implicit Wait  20 second
    Wait Until Element Is Visible  ${Hours&Info Button}
    click element   ${Hours&Info Button}
    Set Selenium Implicit Wait  5 second
    Scroll Element Into View  ${Pay At Restarent/pay Button}
    click element  ${Pay At Restarent/pay Button}
    Set Selenium Implicit Wait  2 second
    click element  ${Pay At Restarent/pay Button No}
    Scroll Element Into View  ${Submit Button}
    click element  ${Submit Button}


