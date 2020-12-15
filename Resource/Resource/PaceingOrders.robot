*** Settings ***
Library  Selenium2Library
*** Variables ***
${LocationSelectorText}
${PickUpButton} =  //*[@id="mat-radio-2"]/label/div[1]
${DeliveryButton} =  //*[@id="mat-radio-3"]/label/div[1]
${LocationSelector} =  //*[@id="mat-select-1"]/div/div[1]/span
${PickUpTime Button} =  //*[@id="cdk-step-content-0-0"]/div[1]/div[1]/form/div/mat-form-field/div/div[1]/div
${PickUpTime Option Button} =  //*[@id="mat-option-3"]/span
${Tip10%} =  //*[@id="mat-button-toggle-1-button"]/div
${Tip15%} =  //*[@id="mat-button-toggle-2-button"]/div


${payNow Button} =  //*[@id="cdk-step-content-0-0"]/div[2]/button


${ChooseAnother Way} =  //*[@id="braintree--dropin__14b54911-3cac-4993-b087-a26e26c65758"]/div/div[5]
${Card} =  //*[@id="braintree--dropin__5d2031f4-3b41-4dc1-bb57-4912b3c14dea"]/div/div[5]/div[2]/div/div[1]
${CardNumber} =  //*[@id="credit-card-number"]
${Cardexpiration} =  //*[@id="expiration"]
${CardCVV} =  //*[@id="cvv"]
${PlaceOrder Button} =  xpath=/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/div/app-order-component/mat-sidenav-container/mat-sidenav-content/mat-horizontal-stepper/div[2]/div[2]/div/button

${DeliveryAddress} =  //*[@id="address-input"]

*** Keywords ***
PayNow Page PickUP
    click element  ${PickUpButton}
    ${LocationSelectorText} =  get text  ${LocationSelector}
    click element  ${PickUpTime Button}
    Wait Until Page Contains Element  ${PickUpTime Option Button}
    Wait Until Element Is Visible  ${PickUpTime Option Button}
    click element  ${PickUpTime Option Button}
    click element  ${Tip10%}
    Wait Until Page Contains Element  ${Tip15%}
    Wait Until Element Is Visible  ${Tip15%}
    click element  ${Tip15%}
    click element  ${payNow Button}
PayNow Page Delivery
    click element  ${DeliveryButton}
    input text  ${DeliveryAddress}   18, Atyam Vari St, Venkatarayapuram, Tanuku, Andhra Pradesh 534211
    Press Keys  none  ARROW_DOWN
    Press Keys  none  ENTER
    Wait Until Element Is Enabled  ${payNow Button}
    click element  ${payNow Button}



PlaceOrder Page old
    Log  ${LocationSelectorText}
    click element   ${ChooseAnother Way}
    Wait Until Element Is Visible  ${Card}
    click element  ${Card}
    input text   ${CardNumber}  4111111111111111
    input text   ${Cardexpiration}  1225
    input text    ${CardCVV}  101
    Wait Until Element Is Visible  ${PlaceOrder Button}
    click element  ${PlaceOrder Button}
PlaceOrder Page old1

    Wait Until Element Is Visible  ${PlaceOrder Button}
    Set Selenium Implicit Wait  100 second
    sleep  20
    Element Should Be Enabled  ${PlaceOrder Button}
    Click Element  ${PlaceOrder Button}
