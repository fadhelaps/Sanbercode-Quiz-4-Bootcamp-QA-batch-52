*** Settings ***
Resource            ../base/base.robot
Variables          bookPage_locators.yaml

*** Keywords ***
Verify Book Page Appears
    Wait Until Element Is Visible            ${book_type}
    Wait Until Element Is Visible            ${homeTown}
    Wait Until Element Is Visible            ${destination}
    Wait Until Element Is Visible            ${class}
    Wait Until Element Is Visible            ${start_date}
    Wait Until Element Is Visible            ${end_date}
    Wait Until Element Is Visible            ${service_type}
    Wait Until Element Is Visible            ${check_box_day}
    Wait Until Element Is Visible            ${book_button_bookPage}

Click One Way On Book Page
    Wait Until Element Is Visible            ${book_type}
    Click Element                            ${book_type}

Choose Hometown On Book Page
    Wait Until Element Is Visible            ${homeTown}
    Click Element                            ${homeTown}
    Wait Until Element Is Visible            ${homeTown_newYork}
    Click Element                            ${homeTown_newYork} 

Choose Destination On Book Page
    Wait Until Element Is Visible            ${destination}
    Click Element                            ${destination}
    Wait Until Element Is Visible            ${destination_london}
    Click Element                            ${destination_london}
    
Choose Class On Book Page
    Wait Until Element Is Visible            ${class}
    Click Element                            ${class}
    Wait Until Element Is Visible            ${class_economy}
    Click Element                            ${class_economy}    

Choose Start Date On Book Page
    Wait Until Element Is Visible            ${start_date}
    Click Element                            ${start_date}
    Click Element                            ${start_date_example}
    Click Element                            ${start_date_ok_button}

Choose End Date On Book Page
    Wait Until Element Is Visible            ${end_date}
    Click Element                            ${end_date}
    Click Element                            ${end_date_example}
    Click Element                            ${end_date_example}

Choose Service On Book Page
    Wait Until Element Is Visible            ${service_type}
    Click Element                            ${service_type}

Click Check Box Day On Book Page
    Wait Until Element Is Visible            ${check_box_day}
    Click Element                            ${check_box_day}

Click Book Button On Book Page
    Wait Until Element Is Visible            ${book_button_bookPage}
    Click Element                            ${book_button_bookPage}

