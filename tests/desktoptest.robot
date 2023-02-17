*** Settings ***

Documentation                Desktop test automation
Library                      QVision
Suite Setup
Suite Teardown

*** Keywords ***
Open macOS Calculator
    RunCommand               calc.exe
    # VerifyText             Calculator

Close macOS Calculator
    ClickText                Calculator
    ClickText                Close Calculator


*** Test Cases ***
Test Addition
    [Documentation]          Tests the addition function on the Calculator
    Open macOS Calculator
    ClickText                9
    ClickIcon                c:\\Temp\\resources\\calc-plus.jpg
    ClickText                5
    ClickText                =
    VerifyText               15
    # CloseWindow