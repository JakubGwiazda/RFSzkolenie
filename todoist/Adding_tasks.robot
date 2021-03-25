*** Settings ***
Resource    Resources/LoginActions.robot
Resource    Resources/ProjectActions.robot


Test Setup    User is logged in
Test Teardown    Close Todoist app



*** Test Cases ***
User can add a task to the project
    User has the project created
    User adds new task to the project
    User checks if task was created
