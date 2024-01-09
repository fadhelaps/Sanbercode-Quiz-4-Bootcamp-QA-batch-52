*** Settings ***
Resource            ../base/base.robot
Resource                ../homePageObject/homePage.robot
Variables           loginPage_locators.yaml

*** Keywords ***
Verify Login Page Appears
    Wait Until Element Is Visible        ${enter_userName}
    Wait Until Element Is Visible        ${enter_password}
    Wait Until Element Is Visible        ${signIn_button_login}

Input Username On Login Page
    [Arguments]        ${email}=${VALID_EMAIL}
    Input Text        ${input_email}    ${email}
    
Input Password On Login Page
    [Arguments]        ${password}=${VALID_PASSWORD}
    Input Text        ${input_password}    ${password}

Click Sign In Button On Login Page
    Click Element        ${signIn_button_login}

Login With Valid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Page Appears
    Input Username On Login Page     ${email}
    Input Password On Login Page  ${password}
    Click Sign In Button On Login Page
    