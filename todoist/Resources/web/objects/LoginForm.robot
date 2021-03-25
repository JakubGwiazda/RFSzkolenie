*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${EMAIL_INPUT} =    css:#email
${PASSWORD_INPUT} =    css:#password
${LOGIN_BUTTON} =    css:.submit_btn



*** Keywords ***
Enter credentials
    [Arguments]    ${login}    ${password}
    Input Text    ${EMAIL_INPUT}    ${login}
    Input Text    ${PASSWORD_INPUT}    ${password}


Login
    Click Element    ${LOGIN_BUTTON}
