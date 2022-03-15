*** Comments ***
1. Launch browser
2. Maximize and set the implicit wait
3. Naviagte https://nasscom.in/nasscom-membership
4. Click Institutional Members
5. Check Telecom Services
6. Check Trade & Investment
7. Enter Name of Organization as "LT"
8. Enter Address Line 1  as "#20 Chennai"
9. Select State as Tamil Nadu
10. Select City as Chennai
11. Click Mode of payment offline
12. Check code of conduct detail
13. Click on Preview

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://nasscom.in/nasscom-membership
    #Institutional Members
    #Click Element    xpath=//label[@class="option"]
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-field-business-focus-inst-und-968
    Input Text    id=edit-title    LT
    Input Text    id=edit-field-address-line-1-und-0-value    10-111 konda
    #xpath=//select[@data-sc-field-name="employees"]
    Select From List By Label    xpath=//select[@id="edit-field-state-member-und"]        Tamil Nadu

    Select From List By Label    id=edit-field-city-membership-und      Chennai
    #Input Text    id=edit-field-pincode-und-0-value    523187
    Click Element    id=edit-field-mode-of-payment-und-1
    Click Element    id=edit-field-code-of-conduct-und-0
    Click Element    id=edit-preview
    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    R:${/}konda.pdf
    Click Element    xpath=(//input[@value="Upload"])[1]