
*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Test Cases ***
TC1
    Append To Environment Variable    path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    #executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    # ${EXECDIR}${/}driver${/}chromedriver.exe
    Comment     done
