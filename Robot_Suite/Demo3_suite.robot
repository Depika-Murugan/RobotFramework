* Settings *
Library    Collections

* Comments *
working with  local variable scalar, list, dic

* Test Cases *
TC1
    Set Local Variable    ${firstname}       Deepika
    ${lastname}     Set Variable    Murugan
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   9876

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=Deepika    lastname=Murugan   mobile=9874563210
    Log To Console    ${dic}[lastname]
