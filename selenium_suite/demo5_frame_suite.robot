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

TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Set Selenium Implicit Wait    30s
    Maximize Browser Window
    #https://demo.openemr.io/b/openemr
    #1.  Navigate onto https://demo.openemr.io/b/openemr
    Go To    url=https://demo.openemr.io/b/openemr
    #Select Frame    name=login_page
    #2.  Enter username as admin authUser
    Input Text    id=authUser    admin
    #3.  Enter password as pass
    Input Text    id=clearPass    pass
    #4.  Select Language as “English (Indian)”  languageChoice      value="18"
    Select From List By Value    xpath=//select[@name="languageChoice"]     18
    #5.  Click on the login button
    Click Element    xpath=//button[@type="submit"]
    #6.  Click on Messages tabSpan bgcolor2
    Click Element    xpath=//div[@class="tabSpan bgcolor2 tabsNoHover"]
    #7.  Click on Add New
    Select Frame    name=msg
    Click Element    partial link=Add New
    #8.  Enter text in text area as “hello”
    Input Text    id=note    hello
    #9.  Select Type as Pharmacy
    Select From List By Label    id=form_note_type      Pharmacy
    #10.  Select Status as Forwarded
    Select From List By Label    id=form_message_status     Forwarded
    #11.  Select 1st user shown
    Select From List By Index    id=users       1
    #12.  Click on Send message
    Click Button    xpath=//button[@id="newnote"]
    #13.  Validate the error message - Please choose a patient
    Element Text Should Be    id=error_reply_to    Please choose a patient
    [Teardown]      Close Browser
