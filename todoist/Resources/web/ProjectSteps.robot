*** Settings ***
Resource   objects/ProjectsList.robot
Resource   objects/NewProjectForm.robot
Resource   objects/ProjectView.robot

*** Keywords ***
Create project
    [Arguments]    ${name}
    Open project creation form
    Create project with name     ${name}

Check if project is created
    [Arguments]     ${name}
    Check project list contains    ${name}

Select project
    [Arguments]     ${name}
    Select project from projects list    ${name}

Create task with name
    [Arguments]   ${name}
    Open task creation form
    Fill task creation form    ${name}
    Confirm task creation form
