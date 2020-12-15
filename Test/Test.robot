*** Settings ***
Library  Selenium2Library
Library  ../Resource/Csv.py
Resource  ../Resource/Common.robot
Resource  ../Resource/Login.robot
Resource  ../Resource/SignUp.robot
Resource  ../Resource/Resource/CreatingOrderwithCupon.robot
Resource  ../Resource/Resource/createCupons.robot
Resource  ../Resource/Resource/PaceingOrders.robot
Resource  ../Resource/Resource/AddingElementsToCart.robot
Resource  ../Resource/Resource/PaternesPages/Info&Hours.robot
Resource  ../Resource/Resource/PaceingOrders1.robot
#Suite Setup  Before Test
Suite Teardown  AfterTest
*** Variables ***
${Delivery} =   yes
${Delivery1} =  no

*** Keywords ***

Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}

*** Test Cases ***
#Test
  Set Selenium Timeout  10s

    ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\Data1.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginp  ${Keys}
    \   Creat Special cupon  ${Keys}
    \   Creat Flash cupon  ${Keys}
Order Placing For flash cupon and Special Cupon
   Set Selenium Timeout  60s
   Set Selenium Speed  0.2
  ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\Data.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginc  ${Keys}
    \   Add City and Searchc  ${Keys}
    \   Clicking flash cuponc
    \   Clicking Special
    \   Special cupon ordering
Placeing Orders PickUP
   Set Selenium Timeout  6s
   Set Selenium Speed  0.2
  ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\PlaceingOrder.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginc  ${Keys}
    \   GoingToMenu
    \   Add FullMenu
    \   Clicking CartButton
    \   Clicling Checkout Button
    \   PayNow Page PickUP
    \   PlaceOrder Page old1
Placeing Orders Delivery
   Set Selenium Timeout  6s
   Set Selenium Speed  0.2
  ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\PlaceingOrder.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginc  ${Keys}
    \   GoingToMenu
    \   Add FullMenu
    \   Clicking CartButton
    \   Clicling Checkout Button
    \   PayNow Page Delivery
    \   PlaceOrder Page old1
Enableing Pay at Hotel
    Set Selenium Timeout  10s

    ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\Data1.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginp  ${Keys}
    \   Pay At Restarent Yes
Ordering With Out Payment
     Set Selenium Timeout  6s
        Set Selenium Speed  0.2
  ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\PlaceingOrder1.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginc  ${Keys}
    \   GoingToMenu
    \   Add BreakfastMenu
    \   Add Brunch Menu
    \   Add Lunch Menu
    #\   placeing order  ${Keys}
    ${Data}  Get CSV Data  C:\\Users\\R~N~K~V\\Documents\\Neeraj\\Selenium\\Affine labs\\Cupon Creation\\Resource\\Data\\Data1.csv
   :FOR  ${Keys}  IN  @{Data}
    \   Loginp  ${Keys}
    \   Pay At Restarent No
