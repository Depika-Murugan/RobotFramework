**** Settings ****
Library    SeleniumLibrary

**** Test Cases ****
TC1
   Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver{/}chromedriver
   Maximize Browser Window
   Set Selenium Implicit Wait     10s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/
   Comment    switching to frame
   Select Frame    xpath=//frame[@name='login_page']
   Input Text  name=fldLoginUserId     text123
   Comment    click on continue
   Click Element  link=Continue
   Comment   switch to main html
   Unselect Frame



