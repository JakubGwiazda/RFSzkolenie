*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_PROJECT_ICON} =    css:[data-track="navigation|projects_quick_add"]
${PROJECT_LIST} =    css:#projects_list
${PROJECT_ITEM} =    ${PROJECT_LIST} li


*** Keywords ***
Open project creation form
    Click Element    ${ADD_PROJECT_ICON}

Select project from projects list
    [Arguments]    ${name}
    Click Element    ${PROJECT_ITEM}

Check project list contains
    [Arguments]     ${name}
    Element Should Contain    ${PROJECT_LIST}    ${name}
    Capture Page Screenshot
