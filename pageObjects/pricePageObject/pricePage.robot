*** Settings ***
Resource            ../base/base.robot
Variables           pricePage_locators.yaml

*** Keywords ***
Verify Price Page Appears
    Wait Until Element Is Visible        ${price_logo}
    Wait Until Element Is Visible        ${price_example}
    Wait Until Element Is Visible        ${confirm_button_pricePage}

Click Price On Price Page
    Wait Until Element Is Visible        ${price_example}
    Click Element                        ${price_example}

Click Confirm Button On Price Page
    Wait Until Element Is Visible        ${confirm_button_pricePage}
    Click Element                        ${confirm_button_pricePage}

Verify Reservation Page Appears
    Wait Until Element Is Visible        ${reservation_booked}
