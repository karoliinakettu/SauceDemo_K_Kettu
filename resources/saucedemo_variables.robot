*** Variables ***
${SWAG_PASSWORD}                secret_sauce
${WRONG_PASSWORD}               wrOngp4ssw0rd
${STANDARD_USER}                standard_user
${LOCKED_OUT_USER}              locked_out_user
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

### Lists ###
@{ITEMS_TO_ADD}                 ${BACKBAG}    ${BIKE_LIGHT}    ${TSHIRT}    ${FLEECE}    ${ONSIE}    ${RED_SHIRT}
@{PRICES_TO_ADD}                ${BACKBAG_PRICE}    ${BIKE_LIGHT_PRICE}    ${TSHIRT_PRICE}    ${FLEECE_PRICE}    ${ONSIE_PRICE}    ${RED_SHIRT_PRICE}
@{MAINPAGE_ITEMS}               add-to-cart-sauce-labs-backpack    add-to-cart-sauce-labs-bike-light  add-to-cart-sauce-labs-bolt-t-shirt  add-to-cart-sauce-labs-fleece-jacket     add-to-cart-sauce-labs-onesie    add-to-cart-test.allthethings()-t-shirt-(red)
@{REMOVE_ITEM_MAINPAGE}         remove-sauce-labs-backpack    remove-sauce-labs-bike-light    remove-sauce-labs-bolt-t-shirt    remove-sauce-labs-fleece-jacket    remove-sauce-labs-onesie    remove-test.allthethings()-t-shirt-(red)