*** Settings ***
Resource            ../pageObjects/homePageObject/homePage.robot
Resource            ../pageObjects/loginPageObject/loginPage.robot
Resource            ../PageObjects/bookPageObject/bookPage.robot
Resource            ../PageObjects/pricePageObject/pricePage.robot
Resource            ../PageObjects/searchPageObject/searchPage.robot
Resource            loginSuite.robot
Test Setup            Run Keywords
...                    Open Flight Application
...                    AND Login with Valid Credentials
Test Teardown    Close Flight Application


*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${BOOKING_ID}                DA935

*** Test Cases ***
User should be able to search by booking ID
    # Step 1: Verify User Is Logged In
    Verify User Is Logged In
    # Step 2: Click Search Button On Home Page
    Click Search Button On Home Page
    # Step 3: Verify Search Page Appears
    Verify Search Page Appears
    # Step 4: Input Booking ID
    Input Booking ID
    # Step 5: Click Search Button On Search Page
    Click Search Button On Search Page
    # Step 6: Verify Reservation Page
    Verify Reservation Page