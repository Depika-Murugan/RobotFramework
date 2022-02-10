* Settings *
Library  Collections
* Variables *
${MY_NAME}      Deepika Murugan
@{COLORS}    red    green    yellow
&{EMPLOYEE1}    empid=101    empname=Deepika    age=22

**** Test Cases ****
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC2

      FOR  ${robot}    IN    ${COLORS}
       Log To Console    ${robot}
      END

TC3
      ${count}   Get Length   ${Colors}
      Log To Console    ${count}
      FOR  ${i}    IN    0    1    2
       Log To Console    ${Colors}[${i}]
      END

TC4
    Log To Console    ${EMPLOYEE1}
    Log To Console    ${EMPLOYEE1}[empname]
    Log To Console    The employee age is ${EMPLOYEE1}[age]
    Log Dictionary    ${EMPLOYEE1}