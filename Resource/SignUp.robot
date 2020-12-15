*** Settings ***
Library  Selenium2Library
*** Keywords ***
Signupc
    [Arguments]   ${Signup}
    click element  xpath=/html/body/app-root/div/app-nav-bar/mat-toolbar/mat-toolbar-row[1]/div[2]/button[2]
    input text  //*[@id="mat-input-0"]  ${Signup[0]}
    input text  //*[@id="mat-input-2"]  ${Signup[1]}
    click element  //*[@id="mat-tab-content-0-1"]/div/form/div/button