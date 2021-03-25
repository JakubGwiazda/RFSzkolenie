*** Settings ***
Library     REST    https://api.todoist.com/rest/v1


*** Keywords ***
Create project
    [Arguments]    ${name}
    &{response}=    Post     /projects    { "name":"${name}"}    headers={"Authorization": "Bearer d469ce54eca3a7ca5b6b5e7d4c8d51ced8d4c7b1"}
    Output
    Set Test Variable    ${projectId}     ${response.body['id']}


Check if project is created
    [Arguments]    ${name}
    Get    /projects/${projectId}      headers={"Authorization": "Bearer d469ce54eca3a7ca5b6b5e7d4c8d51ced8d4c7b1"}
    Output

Select project
    [Arguments]     ${name}
    Log    not implemented

Create task with name
    [Arguments]   ${name}
    Log    not implemented
