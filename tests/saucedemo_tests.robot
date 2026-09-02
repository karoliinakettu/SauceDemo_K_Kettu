*** Settings ***
Resource    ../resources/saucedemo_resoures.robot
Resource    ../resources/saucedemo_variables.robot

*** Test Cases ***
Add Items To Cart And Check It
    [Documentation]    Adds several products to the cart and verifies they appear with the correct prices.
    [Setup]     Sauce Setup
    Add Multiple Items To Cart    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    Go To Your Cart
    Check Multiple Cart Items    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    [Teardown]      Sauce Teardown

Buy Sauce Labs Item
    [Documentation]    Adds a random product to the cart and completes the checkout flow.
    [Setup]     Sauce Setup
    Choose Random Item And Add It    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    Buy The Item
    [Teardown]    Sauce Teardown

Add And Remove Items From The Main Page
    [Documentation]    Adds several products from the main page and removes them again. Basic check for main page functionalities
    [Setup]     Sauce Setup
    Add All To Cart From Main Page    @{MAINPAGE_ITEMS}
    Remove All Items From Main Page     @{REMOVE_ITEM_MAINPAGE}
    [Teardown]      Sauce Teardown

User Should Be Locked Out
    [Documentation]    Verifies a locked-out user cannot log in and sees the correct error message.
    [Setup]     Sauce Setup    username=${LOCKED_OUT_USER}
    Browser.Wait For Elements State      //*[contains(text(), "Epic sadface: Sorry, this user has been locked out.")]    visible
    [Teardown]  Close Browser

Forget To Add Customer Details
    [Documentation]    Tries to complete checkout without entering required customer information. Checks the correct error messages.
    [Setup]     Sauce Setup
    Choose Random Item And Add It    ${ITEMS_TO_ADD}    ${PRICES_TO_ADD}
    Add Customer Details After Forgetting them
    [Teardown]   Sauce Teardown

Try To Login With Wrong Password
    [Documentation]    Attempts login with a valid username and invalid password to confirm the error state.
    [Setup]     Sauce Setup    username=${STANDARD_USER}    password=${WRONG_PASSWORD}
    Browser.Wait For Elements State      //*[contains(text(), "Epic sadface: Username and password do not match any user in this service")]    visible
    [Teardown]   Close Browser