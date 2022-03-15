*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    #https://netbanking.hdfcbank.com/netbanking/
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    #Select Frame    xpath=//frame[@name="login_page"]
    Select Frame    name=login_page
    Input Text    name=fldLoginUserId    test123
    #CONTINUE
    Click Element    link=CONTINUE
    Unselect Frame
    Log To Console    Done








#