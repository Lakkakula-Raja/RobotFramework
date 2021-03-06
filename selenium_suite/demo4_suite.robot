*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    #https://www.db4free.net/
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window       phpMyAdmin
    #Switch Window       NEW
    Input Text    id=input_username    text
    Input Text    id=input_username     Admin
    Input Password    id=input_password    Admin123
    Click Element    xpath=//input[@type="submit"]
    #Error 1045: Access denied for user. Additional error information may be available, but is being hidden by the
    #Element Text Should Be    xpath=//div[contains(text(),'Access')]      Access denied for user.
    Element Should Contain    xpath=//div[contains(text(),'Access')]    Access denied for user.
    Switch Window       MAIN
    [Teardown]      Close Window