*** Settings ***
Resource            ../pageObjects/homePageObject/homePage.robot
Resource            ../pageObjects/loginPageObject/loginPage.robot
Resource            ../PageObjects/bookPageObject/bookPage.robot
Resource            ../PageObjects/pricePageObject/pricePage.robot
Resource            loginSuite.robot
Test Setup            Run Keywords
...                    Open Flight Application
...                    AND Login with Valid Credentials
Test Teardown    Close Flight Application




*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123


*** Test Cases ***
User should be able to book flight
    # Step 1: Verify User Is Logged In
    Verify User Is Logged In
    # Step 2: Click Book Button On Home Page
    Click Book Button On Home Page
    # Step 3: Verify Book Page Appears
    Verify Book Page Appears
    # Step 4: Click One Way On Book Page
    Click One Way On Book Page
    # Step 5: Choose Hometown On Book Page
    # Step 6: Choose Destination On Book Page
    # Step 7: Choose Class On Book Page
    # Step 8: Choose Start Date On Book Page
    # Step 9: Choose End Date On Book Page
    # Step 10: Choose Service On Book Page
    Choose Service On Book Page
    # Step 11: Click Check Box Day On Book Page
    Click Check Box Day On Book Page
    # Step 12: Click Book Button On Book Page
    Click Book Button On Book Page
    # Step 13: Verify Price Page Appears
    Verify Price Page Appears
    # Step 14: Click Price On Price Page
    Click Price On Price Page
    # Step 15: Click Confirm Button On Price Page
    Click Confirm Button On Price Page
    # Step 16: Verify Reservation Page Appears
    Verify Reservation Page Appears
