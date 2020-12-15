*** Settings ***
Library  Selenium2Library
*** Keywords ***
Before Test
    open browser  https://qa.partners.grabqpons.com/login  gc
    sleep  5s
    Maximize Browser Window
AfterTest
    Close All Browsers
