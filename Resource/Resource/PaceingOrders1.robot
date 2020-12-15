*** Settings ***
Library  Selenium2Library
*** Variables ***
${CartButton} =  xpath=/html/body/app-root/div/app-nav-bar/mat-toolbar/mat-toolbar-row[1]/div[2]/button/span/mat-icon
${Check Out} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav/app-order-menu/div/div/div[2]/button
${Order PickupTimeClick} =  //*[@id="mat-select-0"]
${Order PickupTimeClickOption} =  //*[@id="mat-option-3"]/span
${Order payNow} =  //*[@id="cdk-step-content-0-0"]/div[2]/button
${Order PlaceOrder} =  //*[@id="cdk-step-content-0-1"]/div/button
${ItemName}
${ItemName1}
${ViewMenu} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-restaurant-coupons-component/div[2]/div[3]/a/span/span
${BreakfastMenu} =  //*[@id="mat-tab-label-1-0"]
${BreakfastMenu Item1} =  //*[@id="cdk-accordion-child-0"]/div/div/div/mat-card/div/mat-card-content
${BreakfastMenu Item1Name} =  //*[@id="cdk-accordion-child-0"]/div/div/div/mat-card/div/mat-card-content/div[1]/div
${BreakfastMenu Item1Quantity} =  //*[@id="mat-input-6"]
${BreakfastMenu Item1SpecialInstructions} =  //*[@id="mat-input-7"]
${BreakfastMenu Item1AddButton} =  //*[@id="mat-dialog-1"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]
${BurnchMenu} =  //*[@id="mat-tab-label-1-1"]
${BurnchMenu ItemName} =  //*[@id="cdk-accordion-child-1"]/div/div/div/mat-card/div/mat-card-content/div[1]/div
${BrunchMenu Item1Quantity} =  //*[@id="mat-input-8"]
${BrunchMenu Item1SpecialInstructions} =  //*[@id="mat-input-9"]
${BrunchMenu Item1AddButton} =  //*[@id="mat-dialog-2"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]
${LunchButton} =  //*[@id="mat-tab-label-1-2"]
${LunchMenu ItemName} =  //*[@id="cdk-accordion-child-2"]/div/div/div/mat-card/div/mat-card-content/div[1]/div
${LunchMenu Item1Quantity} =  //*[@id="mat-input-10"]
${LunchMenu Item1SpecialInstructions} =  //*[@id="mat-input-11"]
${LunchMenu Item1AddButton} =  //*[@id="mat-dialog-3"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]
${AddCartTitleXpath} =   //*[@id="mat-dialog-title-2"]
${AddCartTitleXpathBrunch Menu} =  //*[@id="mat-dialog-title-3"]
${AddCartTitleXpathBrunch Lunch} =  //*[@id="mat-dialog-title-4"]
*** Keywords ***
Add BreakfastMenu
    Wait Until Page Contains Element  ${BreakfastMenu}
    click element  ${BreakfastMenu}
    ${ItemName} =  Get Text  ${BreakfastMenu Item1Name}
    click element  ${BreakfastMenu Item1}
    AddMenuToCart BreakfastMenu  ${ItemName}

AddMenuToCart BreakfastMenu
    [Arguments]  ${ItemName}
    Wait Until Page Contains Element  ${AddCartTitleXpath}
    ${ItemName1} =  Get Text  ${AddCartTitleXpath}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${BreakfastMenu Item1Quantity}  5
    input text  ${BreakfastMenu Item1SpecialInstructions}  dsd
    click element  ${BreakfastMenu Item1AddButton}
    Set Selenium Implicit Wait  20 second
    click element  ${CartButton}
Add Brunch Menu
    press keys  none  ESC
    Wait Until Page Contains Element  ${BurnchMenu}
    click element  ${BurnchMenu}

    Wait Until Page Contains Element  ${BurnchMenu ItemName}
    ${ItemName} =  Get Text  ${BurnchMenu ItemName}
    click element  ${BurnchMenu ItemName}
    AddMenuToCart Brunch Menu  ${ItemName}
AddMenuToCart Brunch Menu
    [Arguments]  ${ItemName}
    Wait Until Page Contains Element  ${AddCartTitleXpathBrunch Menu}
    ${ItemName1} =  Get Text  ${AddCartTitleXpathBrunch Menu}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log    ok

    ...    ELSE    Log  notOk
    input text  ${BrunchMenu Item1Quantity}  5
    input text  ${BrunchMenu Item1SpecialInstructions}  dsd
    click element  ${BrunchMenu Item1AddButton}
    Set Selenium Implicit Wait  20 second

Add Lunch Menu
    press keys  none  ESC
    Wait Until Page Contains Element  ${LunchButton}
    click element  ${LunchButton}

    Wait Until Page Contains Element  ${LunchMenu ItemName}
    ${ItemName} =  Get Text  ${LunchMenu ItemName}
    click element  ${LunchMenu ItemName}
    AddMenuToCart Lunch Menu  ${ItemName}
AddMenuToCart Lunch Menu
    [Arguments]  ${ItemName}
    Wait Until Page Contains Element  ${AddCartTitleXpathBrunch Lunch}
    ${ItemName1} =  Get Text  ${AddCartTitleXpathBrunch Lunch}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log    ok

    ...    ELSE    Log  notOk
    input text  ${LunchMenu Item1Quantity}  5
    input text  ${LunchMenu Item1SpecialInstructions}  dsd
    click element  ${LunchMenu Item1AddButton}
    Set Selenium Implicit Wait  20 second
    click element  ${CartButton}
placeing order
    [Arguments]  ${Delivery}
    click element  ${Check Out}
    click element  ${Order PickupTimeClick}
    Set Selenium Implicit Wait  1 second
    click element  ${Order PickupTimeClickOption}
    Scroll Element Into View  ${Order payNow}
    click element  ${Order payNow}

    Set Selenium Implicit Wait  10 second


    click element  ${Order PlaceOrder}

