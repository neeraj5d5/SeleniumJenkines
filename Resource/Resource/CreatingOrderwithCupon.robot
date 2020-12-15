*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${orderid}
@{words}
${SearchBarXpath} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-homepage-component/div[1]/div[1]/div[1]/app-main-search/div/form/div/input
${FilterButton} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-search-component/app-search-results/mat-toolbar/mat-toolbar-row[2]/div[1]/button/span/mat-icon
${CuponTypeFilter} =  xpath=//*[@id="mat-tab-label-1-2"]
${FilterFlashCuponCheckBox} =  //*[@id="mat-checkbox-26"]/label
${FilterApplyButton} =  //*[@id="cdk-overlay-4"]/mat-bottom-sheet-container/app-all-filters-menu/mat-toolbar[2]/mat-toolbar-row/button
${FlashCuponClicking} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-search-component/app-search-results/div[2]/div/app-coupon-card[1]/mat-card/mat-card-content/div/div[1]
${FlashCupon ArivalTime} =  //*[@id="mat-select-0"]
${FlashCupon ArivalTimeOptins} =  //*[@id="mat-option-14"]
${FlashCupon PartySize} =  //*[@id="mat-select-1"]/div
${FlashCupon PartySize Options} =  //*[@id="mat-option-239"]/span
${FlashCupon SpecialOptions} =  //*[@id="mat-input-6"]
${FlashCupon FinalizeBooking} =  //*[@id="mat-dialog-1"]/app-book-now-dialog/mat-dialog-actions/button[1]
${FlashCupon CancleButton} =  //*[@id="mat-dialog-1"]/app-book-now-dialog/mat-dialog-actions/button[2]



*** Keywords ***
Add City and Searchc
    [Arguments]   ${Add City and Search}
    Wait Until Page Contains Element  ${SearchBarXpath}
    input text  ${SearchBarXpath}  ${Add City and Search[3]}
    Set Selenium Implicit Wait  1 second
    click element  ${SearchBarXpath}
    Set Selenium Implicit Wait  10 second
    press keys  none  ENTER
    Set Selenium Implicit Wait  5 second
Clicking flash cuponc
    click element  ${FilterButton}
    click element  ${CuponTypeFilter}
    click element  ${FilterFlashCuponCheckBox}
    Set Selenium Implicit Wait  5 second
    click element  ${FilterApplyButton}
    Set Selenium Implicit Wait  5 second
    Wait Until Page Contains Element  ${FlashCuponClicking}
    wait until element is visible  ${FlashCuponClicking}
    Set Selenium Implicit Wait  5 second
    click element  ${FlashCuponClicking}
    Set Selenium Implicit Wait  2 second
    Wait Until Page Contains Element  ${FlashCupon ArivalTime}
    click element  ${FlashCupon ArivalTime}
    Wait Until Page Contains Element  ${FlashCupon ArivalTimeOptins}
    click element  ${FlashCupon ArivalTimeOptins}
    click element  ${FlashCupon PartySize}
    Set Selenium Implicit Wait  5 second

    click element  ${FlashCupon PartySize Options}
    input text  ${FlashCupon SpecialOptions}  spice
    #click element  ${FlashCupon FinalizeBooking}
    Set Selenium Implicit Wait  30 second
    click element  ${FlashCupon CancleButton}
    Set Selenium Implicit Wait  10 second
    sleep  10s
Clicking Special
    #click element  //*[@id="mat-expansion-panel-header-0"]
    #click element  //*[@id="mat-chip-list-0"]/div/div[3]/div/mat-chip/mat-icon
    click element  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-search-component/app-search-results/mat-toolbar/mat-toolbar-row[2]/div[1]/button
    Set Selenium Implicit Wait  2 second
    click element  xpath=//*[@id="mat-tab-label-2-2"]/div
    sleep  2s
    click element  //*[@id="mat-checkbox-55"]/label
    sleep  20s
    click element  //*[@id="mat-checkbox-56"]/label
    click element  //*[@id="cdk-overlay-8"]/mat-bottom-sheet-container/app-all-filters-menu/mat-toolbar[2]/mat-toolbar-row/button
    sleep  22s
    click element  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-search-component/app-search-results/div[2]/div/app-coupon-card/mat-card
    sleep  2s

    input text  //*[@id="mat-input-8"]  jhkj
    click element  //*[@id="mat-dialog-2"]/app-combo-dialog/mat-dialog-actions/button[1]
    sleep  10s
Special cupon ordering
    Press Keys    None    ESC
    click element  //*[@id="mat-select-3"]
    Set Selenium Implicit Wait  1 second
    click element  //*[@id="mat-option-75"]
    Scroll Element Into View  //*[@id="cdk-step-content-0-0"]/div[2]/button
    click element  //*[@id="cdk-step-content-0-0"]/div[2]/button

    Set Selenium Implicit Wait  100 second
    sleep  20
    click element  //*[@id="cdk-step-content-0-1"]/div/button
    click element  //*[@id="cdk-step-content-0-2"]/div/mat-list/mat-list-item[1]
    Wait Until Page Contains Element  //*[@id="cdk-step-content-0-2"]/div/mat-list/mat-list-item[1]/div
    ${orderid} =  Get Text  //*[@id="cdk-step-content-0-2"]/div/mat-list/mat-list-item[2]/div/p
    Log   ${orderid}
    @{words} =   String.Split String    ${orderid}    ${SPACE}
    Log  @{words}[5]



