*** Settings ***

Documentation                Desktop test automation
Library                      QVision
Resource                     ../resources/common.robot

Suite Setup
Suite Teardown

*** Keywords ***
Open Calculator
    RunCommand               calc.exe
    # VerifyText             Calculator

Close Calculator
    ClickText                Calculator
    ClickText                Close Calculator


*** Test Cases ***
Test Addition
    [Documentation]          Tests the addition function on the Calculator
    Open Calculator
    ClickText                9
    ClickIcon                ${base-image-path}${plus-sign}
    ClickText                5
    ClickText                ${base-image-path}${equals-sign}
    VerifyText               15
    # CloseWindow