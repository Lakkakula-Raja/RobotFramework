*** Comments ***
1.  Create a dictionary for keeping students record
2.  To maintain one student record
3.  studentId=1001
4.  studentName=John
5.  Percentage=72.2
6.  mailId=john@gmail.com
*** Test Cases ***
TC1
    #1.  Create a dictionary for keeping students record
    #2.  To maintain one student record
    ${dict}     Create Dictionary       sid=587     sname=raja      per=62.4        mid=konda@gmail.com
    #3.  studentId=1001
    Log To Console    ${dict}[sid]
    #4.  studentName=John
    Log To Console    ${dict}[sname]
    #5.  Percentage=72.2
    Log To Console    ${dict}[per]
    #6.  mailId=john@gmail.com
    Log To Console    ${dict}[mid]