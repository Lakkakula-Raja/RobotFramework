*** Comments ***
1. Navigate https://www.royalcaribbean.com/account/
2. Click on create an account
3. Enter first name
4. Enter last name
5. Month as April
6. Day as 4
7. year as 1992

*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    #1. Navigate https://www.royalcaribbean.com/account/
    Go To    url=https://www.royalcaribbean.com/account/
    #2. Click on create an account
    Click Element    link=Create an account

    #3. Enter first name
    #id="mat-input-3"
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    raja

    #4. Enter last name
    #data-placeholder="Last name/Surname"
    Input Text    xpath=//input[@data-placeholder="Last name/Surname"]    raja

    #5. Month as April
    #id="mat-select-value-1"
    Click Element    xpath=//span[contains(text(),'Month')]
    Click Element    xpath=//span[contains(text(),'April')]
    #6. Day as 4
    Click Element    xpath=//span[contains(text(),'Day')]
    Click Element    xpath=//span[contains(text(),'26')]
    #7. year as 1992
    #aria-labelledby="input-date-dropdown"
    Input Text    xpath=//input[@data-placeholder="Year"]    1998
