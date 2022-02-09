* Settings *
Library   SeleniumLibrary
Library   OperatingSystem
Library   DateTime

* Test Cases *
TC1 Valid Login
    Append To Environment variable      path    ${EXECDIR}\\driver
    Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element   name=Submit
    ${url}  Get Location
    Log To Console    ${url}
    Click Element  id=welcome
    Sleep   5s
    Click Element  link=Logout
    Close Browser
