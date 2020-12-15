*** Settings ***
Library  Selenium2Library
*** Variables ***
${CheckOut Button} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav/app-order-menu/div/div/div[2]/button
${CartButton} =  xpath=/html/body/app-root/div/app-nav-bar/mat-toolbar/mat-toolbar-row[1]/div[2]/button/span/mat-icon
${Check Out} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav/app-order-menu/div/div/div[2]/button
${Order PickupTimeClick} =  //*[@id="mat-select-0"]
${Order PickupTimeClickOption} =  //*[@id="mat-option-3"]/span
${Order payNow} =  //*[@id="cdk-step-content-0-0"]/div[2]/button
${Order PlaceOrder} =  //*[@id="cdk-step-content-0-1"]/div/button
${ItemName}
${ItemName1}
${ViewMenu} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-restaurant-coupons-component/div[2]/div[3]/a/span/span
${FullMenu} =  //*[@id="mat-tab-label-1-0"]
${FullMenu ItemName1} =  //*[@id="cdk-accordion-child-0"]/div/div/div[1]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName1} =  //*[@id="mat-dialog-title-2"]
${FullMenu Add Quantity1} =  //*[@id="mat-input-6"]
${FullMenu Add specialInstruction1} =  //*[@id="mat-input-7"]
${FullMenu Add AddButton1} =  //*[@id="mat-dialog-1"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemName2} =  //*[@id="cdk-accordion-child-0"]/div/div/div[2]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName2} =  //*[@id="mat-dialog-title-3"]
${FullMenu Add Quantity2} =  //*[@id="mat-input-8"]
${FullMenu Add specialInstruction2} =  //*[@id="mat-input-9"]
${FullMenu Add AddButton2} =  //*[@id="mat-dialog-2"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemName3} =  //*[@id="cdk-accordion-child-0"]/div/div/div[3]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName3} =  //*[@id="mat-dialog-title-4"]
${FullMenu Add Quantity3} =  //*[@id="mat-input-10"]
${FullMenu Add specialInstruction3} =  //*[@id="mat-input-11"]
${FullMenu Add AddButton3} =  //*[@id="mat-dialog-3"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemName4} =  //*[@id="cdk-accordion-child-0"]/div/div/div[4]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName4} =  //*[@id="mat-dialog-title-5"]
${FullMenu Add Quantity4} =  //*[@id="mat-input-12"]
${FullMenu Add specialInstruction4} =  //*[@id="mat-input-13"]
${FullMenu Add AddButton4} =  //*[@id="mat-dialog-4"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemName4} =  //*[@id="cdk-accordion-child-0"]/div/div/div[4]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName4} =  //*[@id="mat-dialog-title-5"]
${FullMenu Add Quantity4} =  //*[@id="mat-input-12"]
${FullMenu Add specialInstruction4} =  //*[@id="mat-input-13"]
${FullMenu Add AddButton4} =  //*[@id="mat-dialog-4"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemCard5} =  //*[@id="cdk-accordion-child-0"]/div/div/div[5]/mat-card/div
${FullMenu ItemName5} =  //*[@id="cdk-accordion-child-0"]/div/div/div[5]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName5} =  //*[@id="mat-dialog-title-6"]
${FullMenu Add Quantity5} =  //*[@id="mat-input-14"]
${FullMenu Add specialInstruction5} =  //*[@id="mat-input-15"]
${FullMenu Add AddButton5} =  //*[@id="mat-dialog-5"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemCard6} =  //*[@id="cdk-accordion-child-0"]/div/div/div[6]/mat-card/div
${FullMenu ItemName6} =  //*[@id="cdk-accordion-child-0"]/div/div/div[6]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName6} =  //*[@id="mat-dialog-title-7"]
${FullMenu Add Quantity6} =  //*[@id="mat-input-16"]
${FullMenu Add specialInstruction6} =  //*[@id="mat-input-17"]
${FullMenu Add AddButton6} =  //*[@id="mat-dialog-6"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${FullMenu ItemCard7} =  //*[@id="cdk-accordion-child-0"]/div/div/div[7]/mat-card/div
${FullMenu ItemName7} =  //*[@id="cdk-accordion-child-0"]/div/div/div[7]/mat-card/div/mat-card-content/div[1]/div
${FullMenu Add ItemName7} =  //*[@id="mat-dialog-title-8"]
${FullMenu Add Quantity7} =  //*[@id="mat-input-18"]
${FullMenu Add specialInstruction7} =  //*[@id="mat-input-19"]
${FullMenu Add AddButton7} =  //*[@id="mat-dialog-7"]/app-menu-item-option-dialog/form/mat-dialog-actions/button[2]

${AddCartTitleXpath} =   //*[@id="mat-dialog-title-2"]
${AddCartTitleXpathBrunch Menu} =  //*[@id="mat-dialog-title-3"]
${AddCartTitleXpathBrunch Lunch} =  //*[@id="mat-dialog-title-4"]
*** Keywords ***
GoingToMenu
    Wait Until Page Contains Element  ${ViewMenu}
    Set Selenium Implicit Wait  20 second
    Wait Until Element Is Visible  ${ViewMenu}
    click element  ${ViewMenu}

Clicking CartButton
    Wait Until Page Contains Element   ${CartButton}
    Set Selenium Implicit Wait  20 second
    click element  ${CartButton}

Clicling Checkout Button
    Wait Until Page Contains Element  ${CheckOut Button}
    Scroll Element Into View  ${CheckOut Button}
    click element  ${CheckOut Button}

Add FullMenu
    Wait Until Page Contains Element  ${FullMenu}
    click element  ${FullMenu}
    ${ItemName} =  Get Text  ${FullMenu ItemName1}
    click element  ${FullMenu ItemName1}
    AddMenuToCart FullMenu1  ${ItemName}
    Clicking CartButton


    Set Selenium Implicit Wait  10 second
    ${ItemName} =  Get Text  ${FullMenu ItemName2}
    click element  ${FullMenu ItemName2}
    AddMenuToCart FullMenu2  ${ItemName}

    Set Selenium Implicit Wait  10 second
    ${ItemName} =  Get Text  ${FullMenu ItemName3}
    click element  ${FullMenu ItemName3}
    AddMenuToCart FullMenu3  ${ItemName}

    Set Selenium Implicit Wait  10 second
    ${ItemName} =  Get Text  ${FullMenu ItemName4}
    click element  ${FullMenu ItemName4}
    AddMenuToCart FullMenu4  ${ItemName}

    Set Selenium Implicit Wait  10 second
    Scroll Element Into View  ${FullMenu ItemName5}
    ${ItemName} =  Get Text  ${FullMenu ItemName5}
    click element  ${FullMenu ItemCard5}
    AddMenuToCart FullMenu5  ${ItemName}

    Set Selenium Implicit Wait  10 second
    Scroll Element Into View  ${FullMenu ItemName6}
    ${ItemName} =  Get Text  ${FullMenu ItemName6}
    click element  ${FullMenu ItemCard6}
    AddMenuToCart FullMenu6  ${ItemName}

    Set Selenium Implicit Wait  10 second
    Scroll Element Into View  ${FullMenu ItemName7}
    ${ItemName} =  Get Text  ${FullMenu ItemName7}
    click element  ${FullMenu ItemCard7}
    AddMenuToCart FullMenu7  ${ItemName}


AddMenuToCart FullMenu1
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName1}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity1}  5
    input text  ${FullMenu Add specialInstruction1}  dsd
    click element  ${FullMenu Add AddButton1}
    Set Selenium Implicit Wait  20 second
AddMenuToCart FullMenu2
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName2}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity2}  5
    input text  ${FullMenu Add specialInstruction2}  dsd
    click element  ${FullMenu Add AddButton2}
    Set Selenium Implicit Wait  20 second

AddMenuToCart FullMenu3
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName3}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity3}  5
    input text  ${FullMenu Add specialInstruction3}  dsd
    click element  ${FullMenu Add AddButton3}
    Set Selenium Implicit Wait  20 second

AddMenuToCart FullMenu4
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName4}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity4}  5
    input text  ${FullMenu Add specialInstruction4}  dsd
    click element  ${FullMenu Add AddButton4}
    Set Selenium Implicit Wait  20 second

AddMenuToCart FullMenu5
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName5}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity5}  5
    input text  ${FullMenu Add specialInstruction5}  dsd
    click element  ${FullMenu Add AddButton5}
    Set Selenium Implicit Wait  20 second

AddMenuToCart FullMenu6
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName6}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity6}  5
    input text  ${FullMenu Add specialInstruction6}  dsd
    click element  ${FullMenu Add AddButton6}
    Set Selenium Implicit Wait  20 second

AddMenuToCart FullMenu7
    [Arguments]  ${ItemName}

    ${ItemName1} =  Get Text  ${FullMenu Add ItemName7}
    Run Keyword If    '${ItemName}'=='${ItemName1}'    Log  ${ItemName} ${ItemName1}

    ...    ELSE    Log  ${ItemName} ${ItemName1}


    input text  ${FullMenu Add Quantity7}  5
    input text  ${FullMenu Add specialInstruction7}  dsd
    click element  ${FullMenu Add AddButton7}
    Set Selenium Implicit Wait  20 second

