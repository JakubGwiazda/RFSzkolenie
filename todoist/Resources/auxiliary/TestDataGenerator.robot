*** Settings ***
Library    FakerLibrary

*** Keywords ***
Setup PROJECT_NAME test data
    ${data} =    Country
    Set Test Variable    ${PROJECT_NAME}    ${data}


Setup TASK_NAME test data
    ${data} =    Sentence
    Set Test Variable    ${TASK_NAME}    ${data}
