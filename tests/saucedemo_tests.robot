*** Settings ***
Resource    ../resources/saucedemo_resoures.robot
Resource    ../resources/saucedemo_variables.robot

*** Test Cases ***
Add Items To Cart And Check It
    [Setup]     Sauce Setup
    Add Multiple Items To Cart    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    Go To Your Cart
    Check Multiple Cart Items    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    [Teardown]      Sauce Teardown

Buy Sauce Labs Item
    [Setup]     Sauce Setup
    Choose Random Item And Add It    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    Buy The Item
    [Teardown]    Sauce Teardown

Add And Remove Items From The Main Page
    [Setup]     Sauce Setup
    Add All To Cart From Main Page    @{MAINPAGE_ITEMS}
    Remove All Items From Main Page     @{REMOVE_ITEM_MAINPAGE}
    [Teardown]      Sauce Teardown

User Should Be Locked Out
    [Setup]     Sauce Setup    username=${LOCKED_OUT_USER}
    Browser.Wait For Elements State      //*[contains(text(), "Epic sadface: Sorry, this user has been locked out.")]    visible
    [Teardown]  Close Browser
