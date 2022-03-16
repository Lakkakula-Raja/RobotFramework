*** Settings ***
Library    Collections

*** Variables ***
${NAME}     Konda Babu
@{COL}      R       G       B
*** Test Cases ***

TC1
    Set Local Variable    ${var}    raja
    Log To Console    ${var}
    Log To Console    ${NAME}


TC2
    ${val}      Set Variable    587
    Log To Console    ${val}
    Log To Console    ${NAME}
TC3
    Log To Console    ${COL}
    Log To Console    ${COL}[1]
    ${c}        Get Length    ${COL}
    Log To Console    ${c}
TC4
    @{abc}      Create List     apple       ball        cat
    Log To Console    ${abc}[1]
    Remove Values From List     ${abc}      cat
    Log To Console    ${abc}
    Append To List    ${abc}    cow
    Log To Console    ${abc}
    Insert Into List    ${abc}    1    bag
    Log To Console    ${abc}
    Reverse List    ${abc}
    Log To Console    ${abc}
