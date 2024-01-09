*** Settings ***
Resource            ../base/base.robot
Variables          searchPage_locators.yaml

*** Keywords ***
Verify Search Page Appears
    Wait Until Element Is Visible            ${Input_ID}
    Wait Until Element Is Visible            ${search_button_searchPage}
    
Input Booking ID
    [Arguments]        ${booking_ID}=${BOOKING_ID}
    Input Text            ${Input_ID}    ${booking_ID}

Click Search Button On Search Page
    Wait Until Element Is Visible            ${search_button_searchPage}
    Click Element                            ${search_button_searchPage}

Verify Reservation Page
    Wait Until Element Is Visible            ${departed_text}