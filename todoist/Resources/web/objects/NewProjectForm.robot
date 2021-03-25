*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROJECT_FORM} =    css:div[role="dialog"]
${PROJECT_NAME_INPUT} =    css:#edit_project_modal_field_name
${SUBMIT_FORM_BUTTON} =    ${PROJECT_FORM} form button[type="submit"]

*** Keywords ***
Create project with name
    [Arguments]   ${name}
    Input Text    ${PROJECT_NAME_INPUT}    ${name}
    Click Element    ${SUBMIT_FORM_BUTTON}
    Wait Until Page Does Not Contain Element    ${PROJECT_FORM}
    Sleep    1s
