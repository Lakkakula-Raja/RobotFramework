*** Comments ***
1. Navigate to https://www.redbus.in/
2. Click on profile icon
3. Click on sign in/sign  up
4. Enter mobile number as 8989898

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.redbus.in/
    Click Element    id=i-icon-profile
    Click Element    id=signInLink
    #mobileNoInp
    #modalIframe
    Select Frame    class=modalIframe
    #sele
    Input Text    id=mobileNoInp    523187
    Unselect Frame
    [Teardown]      Close Browser
