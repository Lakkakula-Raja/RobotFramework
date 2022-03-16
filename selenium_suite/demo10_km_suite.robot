*** Comments ***

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.google.com/
    ${title}        Get Title
    Log To Console    ${title}
    ${loc}      Get Location
    Log To Console    ${loc}
    Press Keys    name=q        Raja
    Sleep    2s
    Press Keys    None    ARROW_DOWN
    Sleep    2s
    Press Keys    None   ARROW_DOWN
    Sleep    2s
    Press Keys    None    ARROW_DOWN
    Sleep    2s
    Press Keys    None    ENTER