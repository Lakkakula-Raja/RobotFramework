*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    #https://www.medibuddy.in/
    Go To    url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()="Not Now"]
    Click Element    link=For Employer
    Close Window
    Switch Window       MediBuddy LaunchPad
    Input Text    id=getInTouchName    Raja
    #getInTouchEmail
    Input Text    id=getInTouchEmail    kondababu123@gmail.com
    #getInTouchMobile
    Input Text    id=getInTouchMobile    8919420420
    #getInTouchEmpCount
    Input Text    id=getInTouchEmpCount    16
    #type="submit"
    Click Element    xpath=//button[@type="submit"]
    Close Window