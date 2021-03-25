*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ADD_NEW_TASK_BUTTON} =    css:.task_actions .plus_add_button
${ADD_TASK_BUTTON} =     css:.task_editor [type="submit"]

${TASK_LIST} =    css:[data-testid="project-list-view"] ul

*** Keywords ***
Fill task creation form
    [Arguments]   ${name}
    Press Keys   None   ${name}
    Wait Until Element Is Enabled    ${ADD_TASK_BUTTON}


Open task creation form
    Click Element    ${ADD_NEW_TASK_BUTTON}


Confirm task creation form
    Click Element    ${ADD_TASK_BUTTON}
    Sleep  1s


Task is listed on project view
    [Arguments]    ${name}
    Element Should Contain    ${TASK_LIST}    ${name}
