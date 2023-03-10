*** Settings ***

Documentation                Desktop test automation. 
...                          Instructions: 
...                            Clone this repo to your local machine.
...                            Open common.robot in resources folder.
...                            Update ${base-image-path} variable to point to the images folder of this cloned repository.

Library                      QVision
Resource                     ../resources/common.robot

Suite Setup                 Open Calculator
Suite Teardown              Close Calculator

*** Keywords ***
Open Calculator
    RunCommand               calc.exe
    # VerifyText             Calculator

Close Calculator
    ClickText                Calculator
    CloseWindow


*** Test Cases ***
Test Windows Calculator Add
    [Documentation]          Tests the addition function on the Calculator
    ClickText                9
    ClickIcon                ${base-image-path}\\${plus-sign}
    ClickText                5
    ClickIcon                ${base-image-path}\\${equals-sign}
    VerifyText               14
    ClickIcon                ${base-image-path}\\${clear-sign}

Test Windows Calculator Minus
    [Documentation]          Tests the addition function on the Calculator
    ClickText                9
    ClickIcon                ${base-image-path}\\${minus-sign}
    ClickText                5
    ClickIcon                ${base-image-path}\\${equals-sign}
    VerifyText               4
    ClickIcon                ${base-image-path}\\${clear-sign}
