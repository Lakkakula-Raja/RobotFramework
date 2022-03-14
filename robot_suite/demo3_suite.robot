*** Settings ***
Library     OperatingSystem

*** Test Cases ***
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory    R:${/}Temp${/}My_Folder
    Create File    R:${/}Temp${/}My_Folder${/}notes.txt     raja lakkakula
    Copy File    R:${/}Temp${/}My_Folder${/}notes.txt    R:${/}Temp${/}copy.txt
    Remove File    R:${/}Temp${/}My_Folder${/}notes.txt 
    Remove Directory    R:${/}Temp${/}My_Folder