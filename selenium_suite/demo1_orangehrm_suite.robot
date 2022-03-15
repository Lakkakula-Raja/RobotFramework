
*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
    Append To Environment Variable    path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    #executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    # ${EXECDIR}${/}driver${/}chromedriver.exe
    #txtUsername  Admin
    Set Selenium Implicit Wait    20s
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=menu_pim_viewMyDetails
    Click Element    id=welcome
    Click Element       link=Logout
    Comment     done
TC2
    Log To Console    Raja
    Append To Environment Variable    path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    Set Selenium Implicit Wait    20s
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    raja
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    99008102
    Click Button    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    99008102
