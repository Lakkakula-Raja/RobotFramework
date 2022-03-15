*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
    Append To Environment Variable    path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.goto.com/meeting/    browser=chrome
    Set Selenium Implicit Wait    20s
    Maximize Browser Window
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text    xpath=//input[@data-sc-field-name="firstName"]    john
    Input Text    xpath=//input[@data-sc-field-name="lastName"]    wick
    Input Text    xpath=//input[@data-sc-field-name="email"]    johnwick587@gmail.com
    Input Text    xpath=//input[@data-sc-field-name="phone"]    8919420420
    Input Text    xpath=//input[@data-sc-field-name="company"]    LTTS
    Select From List By Label    xpath=//select[@data-sc-field-name="employees"]     10 - 99
    Click Element    xpath=//input[@type="submit"]
    [Teardown]      Close Browser