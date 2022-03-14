
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
    Log To Console    konda