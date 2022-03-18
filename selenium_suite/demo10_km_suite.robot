*** Comments ***

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://www.google.com/
    ${title}        Get Title
    Log To Console    ${title}
    ${loc}      Get Location
    Log To Console    ${loc}
    Press Keys    name=q        Raja

    Press Keys    None    ARROW_DOWN

    Press Keys    None   ARROW_DOWN

    Press Keys    None    ARROW_DOWN

    Press Keys    None    ENTER
TC2
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://www.myntra.com/
    Mouse Over    xpath=//span[text()='Profile']
    Click Element    xpath=//a[text()="login / Signup"]


TC3
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    url=https://nasscom.in/
    Mouse Over    xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()="Members Listing"]
    Wait Until Page Contains Element    xpath=//input[@id='edit-title']     timeout=30s
    ${title}        Get Title
    Log To Console    ${title}
    Should Be Equal    ${title}    Members Listing | NASSCOM
TC4
    #    Task 3:
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s

    #1.  .Launch the web site https://phptravels.net/
    Go To    url=https://phptravels.net/
    #2.  Goto Flights
    #flights
    #Click Element    xpath=//a[text()="flights"]
    #Click Element    link=flights
    #Click Element    xpath=//*[@id="hotels-tab"]/span[1]/i
    Click Element    xpath=//*[@id="fadein"]/header/div[2]/div/div/div/div/div[2]/nav/ul/li[3]/a
    #//*[@id="hotels-tab"]/span[1]/i
    #3.  Select Business
    Select From List By Label    id=flight_type     Business
    #4.  Choose "FROM" location as "Los Angeles" (LAX)
    Input Text    xpath=//input[@placeholder="Flying From"]    Los Angeles
    #LAX
    Click Element    xpath=//b[text()="LAX"]
    #5.  Choose "TO" as "Dallas" (DAL)
    Input Text    xpath=//input[@placeholder="To Destination"]    Dallas
    #LAX
    Click Element    xpath=//b[text()="DAL"]
    #6.  Set the travel date “30-12-2021”
    #December 2022
    Click Element    xpath=//th[text()="December 2022"]
    Input Text    xpath=//input[@class="depart form-control"]    21-03-2022

    Click Element    xpath=//span[@class="guest_flights d-block text-center"]
    #7.  Adult as 4
    #
    Click Element    xpath=(//i[@class="la la-plus"])[5]
    Click Element    xpath=(//i[@class="la la-plus"])[5]
    Click Element    xpath=(//i[@class="la la-plus"])[5]


    #8.  Child as 2
    Click Element    xpath=(//i[@class="la la-plus"])[6]
    Click Element    xpath=(//i[@class="la la-plus"])[6]
    #class="guest_flights d-block text-center"
    #class="dropdown-item adult_qty"        id="fadults"
    #class="dropdown-item child_qty"
    #class="qtyInc" 4

    #
    Click Element    xpath=//i[@class="mdi mdi-search"]
    #9.  Get the first flight details and print
    #class="breadcrumb-area bread-bg-flights"
    Element Should Contain    //div[@class='section-heading']    LAX
    Element Should Contain    //div[@class='section-heading']    DAL
    Element Should Contain    //div[@class='section-heading']    31-03-2022

    ${text}     Get Text    //div[@class='section-heading']
    Log To Console    ${text}


