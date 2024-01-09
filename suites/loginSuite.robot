*** Settings ***
Resource            ../pageObjects/homePageObject/homePage.robot
Resource            ../pageObjects/loginPageObject/loginPage.robot
Test Setup            Run Keywords
...                    Open Flight Application
...                    AND Login with Valid Credentials
Test Teardown    Close Flight Application




*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123


*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Open Application
    # Open Flight Application
    # Step 2: Verify Home Page Appears
    # Verify Home Page Appears
    # Step 3: Click Sign In Button On Home Page
    # Click Sign In Button On Home Page
    # Step 4: Verify Login Page Appears
    # Verify Login Page Appears
    # Step 5: Input Username
    # Input Username On Login Page
    # Step 6: Input Password
    # Input Password On Login Page
    # Step 7:Click Sign In Button On Login Page
    # Click Sign In Button On Login Page
    # Step 8: Verify User Is Logged In
    Verify User Is Logged In