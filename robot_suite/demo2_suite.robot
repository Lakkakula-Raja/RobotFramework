*** Settings ***
Library     DateTime
*** Test Cases ***
TC1
    ${cdt}   Get Current Date
    Log To Console    ${cdt}
    Log    ${cdt}
    Comment     we will get cureent time
