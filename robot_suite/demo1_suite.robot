*** Test Cases ***
TC1 print My Name
    Log To Console   cls raja Lakkakula
    Log To Console    hello Everyone
TC2
    Log To Console    raja
    Log    hello
TC3
    ${var1}      Set Variable   konda babu
    Log To Console    ${var1}
    Log To Console    my nick name is ${var1}
    
TC4 
    ${var1}     Set Variable    24
    ${var2}     Set Variable    25
    ${result}      Evaluate    ${var1}+${var2}
    Log To Console    my total is ${result}
TC5
    ${r}     Set Variable    36
    ${area}      Evaluate    22/7*${r}**2
    Log To Console    circle area is ${area}