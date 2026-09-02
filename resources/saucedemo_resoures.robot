*** Settings ***
Library    Collections
Library    Browser


*** Keywords ***
Sauce Setup
    [Arguments]     ${username}=${USERNAME}
    Open Browser    https://www.saucedemo.com
    Fill Text       //input[@id="user-name"]      ${username}
    Fill Text       //input[@id="password"]      ${SWAG_PASSWORD}
    Click           //input[@id="login-button"]

Sauce Teardown
    Reset App State And Logout
    Close Browser

Reset App State And Logout
    Click   //button[@id="react-burger-menu-btn"]
    Click   //a[@id="reset_sidebar_link"]
    Browser.Wait For Elements State  //span[@class="shopping_cart_badge"]    detached
    Click   //a[@id="logout_sidebar_link"]

Choose Item From Main Page
    [Arguments]     ${item}
    Click   //div[contains(@class, 'inventory_item_name') and normalize-space(.)='${item}']

Add To Cart In The Item Page
    [Arguments]     ${item}     ${price}
    Browser.Wait For Elements State      //div[contains(@class, 'inventory_details_name') and normalize-space(.)='${item}']  visible
    Browser.Wait For Elements State      //div[contains(@class, 'inventory_details_price') and normalize-space(.)='${price}']   visible
    Click   //button[@id="add-to-cart"]

Choose And Add Item
    [Arguments]     ${item}     ${price}
    Choose Item From Main Page  ${item}
    Add To Cart In The Item Page    ${item}   ${price}
    Go Back To Products

Add Multiple Items To Cart
    [Arguments]    ${items}    ${prices}
    FOR    ${item}    ${price}    IN ZIP    ${items}    ${prices}
        Choose And Add Item    ${item}    ${price}
    END

Choose Random Item And Add It
    [Arguments]    ${items}    ${prices}
    ${index}=    Evaluate    random.randint(0, len(${items}) - 1)    modules=random
    ${item}=    Get From List    ${items}    ${index}
    ${price}=    Get From List    ${prices}    ${index}
    Choose And Add Item    ${item}    ${price}


Go Back To Products
    Click   //button[@id="back-to-products"]

Go To Your Cart
    Click   //a[@class="shopping_cart_link"]

Initiate Checkout
    Click   //button[@id="checkout"]
    Browser.Wait For Elements State  //input[@placeholder="First Name"]  visible

Check Shopping Cart Item
    [Arguments]     ${item}     ${price}
    Browser.Wait For Elements State      //div[@class='cart_item' and .//div[contains(@class, 'inventory_item_name') and normalize-space(.)='${item}'] and .//div[contains(@class, 'inventory_item_price') and normalize-space(.)='${price}']]  visible

Check Multiple Cart Items
    [Arguments]    ${items}    ${prices}
    FOR    ${item}    ${price}    IN ZIP    ${items}    ${prices}
        Check Shopping Cart Item    ${item}    ${price}
    END

Add Personal Info
    Fill Text    //input[@placeholder="First Name"]  Felicia
    Fill Text    //input[@placeholder="Last Name"]   Landon
    Fill Text    //input[@id="postal-code"]      00000
    Click   //input[@id="continue"]

Finish Checkout
    Browser.Wait For Elements State  //button[@id="finish"]  visible
    Click   //button[@id="finish"]
    Browser.Wait For Elements State  //button[@id="generate-pdf-order"]   visible

Buy The Item
    Go To Your Cart
    Initiate Checkout
    Add Personal Info
    Finish Checkout

Toggle Item In Main Page
    [Arguments]     ${item_id}
    Click   //button[@id="${item_id}"]

Add All To Cart From Main Page
    [Arguments]     @{mainpage_items}
    FOR    ${item}    IN    @{mainpage_items}
        Toggle Item In Main Page    ${item}
    END

Remove All Items From Main Page
    [Arguments]     @{remove_items}
    FOR    ${item}    IN    @{remove_items}
        Toggle Item In Main Page    ${item}
    END

Remove Item From The Cart

Remove Item From The Cart On Item Page

Remove Item From The Cart On Main Page
