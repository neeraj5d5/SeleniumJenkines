*** Settings ***
Library  Selenium2Library
*** Variables ***
${element} =  /html/body/app-my-app/app-layout/div/div[2]/div[5]
@{windowsize}
*** Keywords ***
Creat Special cupon
    Set Selenium Timeout  10s
    [Arguments]   ${Flash Cupon}
    Set Selenium Implicit Wait  10 second
    Set Selenium Implicit Wait  10 second
    Wait Until Page Contains Element  xpath=/html/body/app-my-app/app-layout/div/div[1]/app-sidebar-cmp/div[2]/ul/li[8]/a
    Set Selenium Implicit Wait  10 second
    click element  xpath=/html/body/app-my-app/app-layout/div/div[1]/app-sidebar-cmp/div[2]/ul/li[8]/a
    @{windowsize} =  get window size
    Set Selenium Implicit Wait  10 second
    click element  xpath=//*[@id="mat-select-1"]/div/div[1]
    sleep  1s
    click element  //*[@id="mat-option-3"]
    sleep  1s
    #input text  //*[@id="mat-input-3"]  10/26/2020,4:27 pm
    #input text  //*[@id="mat-input-4"]  10/26/2020,12:00 pm
    click element  //*[@id="mat-select-3"]/div
    sleep  1s
    click element  //*[@id="mat-option-42"]/span
    sleep  1s
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[3]/div[2]/div/mat-form-field
    sleep  1s
    click element  //*[@id="mat-option-48"]/span

    click element  //*[@id="publish-qpon-discount-value"]/div
    click element  //*[@id="mat-option-52"]/span
    Scroll Element Into View   //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[5]/div[1]/img
    input text  //*[@id="mat-input-5"]  999
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[4]/div[1]/div/mat-form-field/div/div[1]/div
    click element  //*[@id="mat-option-59"]/span
    click element  //*[@id="mat-select-8"]/div/div[1]
    click element  //*[@id="mat-option-62"]/span
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[5]/div[1]/img
    Scroll Element Into View  xpath=//*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[8]/div/button
    input text  xpath=//*[@id="mat-input-1"]  Special Cupon1
    input text  xpath=/html/body/app-my-app/app-layout/div/div[2]/publish-qpon-cmp/div/div/div/div/div[1]/div/div[1]/div/div/div/div/div[2]/div/div[7]/div[2]/div/mat-form-field/div/div[1]/div/textarea  hjhh
    click element  xpath=//*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[8]/div/button
    sleep  10s
    Scroll Element Into View  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div/div/div[1]/button
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div/div/div[1]/button
Creat Flash cupon
    [Arguments]   ${Flash Cupon}
    Set Selenium Timeout  80s
    sleep  10s
    #Wait Until Page Contains Element  xpath=/html/body/app-my-app/app-layout/div/div[1]/app-sidebar-cmp/div[2]/ul/li[8]/a
    #click element  xpath=/html/body/app-my-app/app-layout/div/div[1]/app-sidebar-cmp/div[2]/ul/li[8]/a
    sleep  2s
    Wait Until Page Contains Element  xpath=//*[@id="mat-select-11"]/div/div[1]
    click element  xpath=//*[@id="mat-select-11"]/div/div[1]

    click element  //*[@id="mat-option-69"]/span

    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[3]/div[1]/div/mat-form-field/div/div[1]/div
    sleep  1s
    click element  //*[@id="mat-option-104"]/span

    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[3]/div[2]/div/mat-form-field/div/div[1]/div
    sleep  1s
    click element  //*[@id="mat-option-110"]/span

    click element  //*[@id="mat-select-20"]/div/div[1]
    sleep  1s
    click element  //*[@id="mat-option-114"]/span
    Scroll Element Into View  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[5]/div[1]/img
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[3]/div[5]/div/mat-form-field/div/div[1]/div
    sleep  1s
    click element  //*[@id="mat-option-121"]/span

    click element  //*[@id="mat-select-16"]/div/div[1]
    sleep  1s
    click element  //*[@id="mat-option-129"]/span


    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[4]/div[2]/div/mat-form-field/div/div[1]/div
    sleep  1s
    click element  //*[@id="mat-option-132"]/span
    Scroll Element Into View   //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[8]/div/button
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[5]/div[1]/img

    input text  //*[@id="mat-input-7"]  Flas cupon 1

    input text  //*[@id="mat-input-8"]  ddsds

    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div[8]/div/button/span

    sleep  10s
    Wait Until Page Contains Element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div/div/div[1]/button
    Scroll Element Into View  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div/div/div[1]/button
    click element  //*[@id="PublishQponlink"]/div/div/div/div/div[2]/div/div/div/div[1]/button







