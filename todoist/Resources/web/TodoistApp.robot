*** Settings ***
Library     SeleniumLibrary
Resource    objects/LoginForm.robot

*** Variables ***
${APPLICATION} =    css:#app_holder


*** Keywords ***
User logs in
    Open Browser    https://todoist.com/users/showlogin
    Enter credentials    ${LOGIN}    ${PASSWORD}
    Login
    Wait Until Page Does Not Contain Element    css:#loading

Close app
    Close browser
