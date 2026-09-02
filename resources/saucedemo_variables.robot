*** Variables ***
${SWAG_PASSWORD}                secret_sauce
${STANDARD_USER}                standard_user
${LOCKED_OUT_USER}              locked_out_user
${PROBLEM_USER}                 problem_user
${PERFORMANCE_GLITCH_USER}      performance_glitch_user
${ERROR_USER}                   error_user
${VISUAL_USER}                  visual_user
${USERNAME}                     ${STANDARD_USER}
${BACKBAG}                      Sauce Labs Backpack
${BIKE_LIGHT}                   Sauce Labs Bike Light
${TSHIRT}                       Sauce Labs Bolt T-Shirt
${FLEECE}                       Sauce Labs Fleece Jacket
${ONSIE}                        Sauce Labs Onesie
${RED_SHIRT}                    Test.allTheThings() T-Shirt (Red)
${BACKBAG_PRICE}                $29.99
${BIKE_LIGHT_PRICE}             $9.99
${TSHIRT_PRICE}                 $15.99
${FLEECE_PRICE}                 $49.99
${ONSIE_PRICE}                  $7.99
${RED_SHIRT_PRICE}              $15.99

@{ITEMS_TO_ADD}                 ${BACKBAG}    ${BIKE_LIGHT}    ${TSHIRT}    ${FLEECE}    ${ONSIE}    ${RED_SHIRT}
@{PRICES_TO_ADD}                ${BACKBAG_PRICE}    ${BIKE_LIGHT_PRICE}    ${TSHIRT_PRICE}    ${FLEECE_PRICE}    ${ONSIE_PRICE}    ${RED_SHIRT_PRICE}

${BACKBAG_MAINPAGE}                      add-to-cart-sauce-labs-backpack
${BIKE_LIGHT_MAINPAGE}                   add-to-cart-sauce-labs-bike-light
${TSHIRT_MAINPAGE}                       add-to-cart-sauce-labs-bolt-t-shirt
${FLEECE_MAINPAGE}                       add-to-cart-sauce-labs-fleece-jacket
${ONSIE_MAINPAGE}                        add-to-cart-sauce-labs-onesie
${RED_SHIRT_MAINPAGE}                    add-to-cart-test.allthethings()-t-shirt-(red)

@{MAINPAGE_ITEMS}               ${BACKBAG_MAINPAGE}     ${BIKE_LIGHT_MAINPAGE}  ${TSHIRT_MAINPAGE}  ${FLEECE_MAINPAGE}     ${ONSIE_MAINPAGE}    ${RED_SHIRT_MAINPAGE}

@{REMOVE_ITEM_MAINPAGE}         remove-sauce-labs-backpack    remove-sauce-labs-bike-light    remove-sauce-labs-bolt-t-shirt    remove-sauce-labs-fleece-jacket    remove-sauce-labs-onesie    remove-test.allthethings()-t-shirt-(red)