*** Settings ***
Library  Selenium2Library
*** Keywords ***
Loginc
    [Arguments]   ${Login}


    Set Selenium Timeout  1000s
    open browser  ${Login[0]}  gc
    Maximize Browser Window
    Set Selenium Implicit Wait  10 second
    click element  xpath=/html/body/app-root/div/app-nav-bar/mat-toolbar/mat-toolbar-row[1]/div[2]/button[1]
    Set Selenium Implicit Wait  10 second
    input text  //*[@id="mat-input-3"]  ${Login[1]}
    input text  //*[@id="mat-input-5"]  ${Login[2]}
    Set Selenium Implicit Wait  1 second
    click element  //*[@id="mat-tab-content-0-0"]/div/form/div[2]/button
    Set Selenium Implicit Wait  20 second

Loginp
    [Arguments]   ${Login}
    open browser  ${Login[0]}  gc
    Maximize Browser Window
    Set Selenium Implicit Wait  10 second
    click element  xpath=/html/body/app-my-app/app-layout/nav/div/div[2]/ul/li[5]/a
    input text  xpath=/html/body/app-my-app/app-layout/app-login-cmp/div/div[2]/div/div/form/div/div[2]/span[1]/div/input  ${Login[1]}
    input text  xpath=/html/body/app-my-app/app-layout/app-login-cmp/div/div[2]/div/div/form/div/div[2]/span[2]/div/input  ${Login[2]}
    Set Selenium Implicit Wait  1
    click element  xpath=/html/body/app-my-app/app-layout/app-login-cmp/div/div[2]/div/div/form/div/div[3]/button
    Set Selenium Implicit Wait  1
