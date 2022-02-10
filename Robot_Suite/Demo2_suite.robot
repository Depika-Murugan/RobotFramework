**** Variables ****
${MY_NAME}      Deepika Murugan
@{COLORS}    red    green    yellow

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
      ${count}   Get Length   ${Colors}
      Log To Console    ${count}
      FOR  ${i}    IN    0    1    2
       Log To Console    ${Colors}[${i}]
      END

