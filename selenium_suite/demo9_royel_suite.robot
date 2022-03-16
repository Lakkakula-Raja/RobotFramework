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
    Set Selenium Speed    1s

    #1. Navigate https://www.royalcaribbean.com/account/
    Go To    url=https://www.royalcaribbean.com/account/
    #2. Click on create an account
    Click Element    link=Create an account
    #3. Enter first name
    #id="mat-input-3"
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    raja

    #4. Enter last name
    #data-placeholder="Last name/Surname"
    Input Text    xpath=//input[@data-placeholder="Last name/Surname"]    konda

    #5. Month as April
    #id="mat-select-value-1"
    Click Element    xpath=//span[contains(text(),'Month')]
    Click Element    xpath=//span[contains(text(),'April')]
    #6. Day as 4
    Click Element    xpath=//span[contains(text(),'Day')]
    Scroll Element Into View    xpath=//span[contains(text(),'28')]
    Click Element    xpath=//span[contains(text(),'26')]
    #7. year as 1992
    #aria-labelledby="input-date-dropdown"

    Input Text    xpath=//input[@data-placeholder="Year"]    1998
    #class="mat-option-text"
    # India
    Click Element    xpath=//span[contains(text(),'residence')]
    Scroll Element Into View    xpath=//span[contains(text(),'Iraq')]
    Click Element    xpath=//span[contains(text(),'India')]
    #data-placeholder="Email address"
    Input Text    xpath=//input[@data-placeholder="Email address"]    kondababu@gmail.com
    #security
    Click Element    xpath=//span[contains(text(),'security')]
    #vacation
    Scroll Element Into View    xpath=//span[contains(text(),'album')]
    Click Element    xpath=//span[contains(text(),'vacation')]
    #data-placeholder="Answer"
    Input Text    xpath=//input[@data-placeholder="Answer"]    Desaipeta
    #aria-labelledby="agreements"
    #Click Element    xpath=//input[@aria-labelledby="agreements"]
    #type="checkbox"
    Click Element    xpath=//input[@type="checkbox"]/..
    #Done
    Click Element    xpath=//button[contains(text(),'Done')]
    Element Text Should Be    xpath=//span[contains(text(),'Password')]    Password is required.




