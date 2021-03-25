*** Settings ***
Resource    ${TYPE}/ProjectSteps.robot
Resource    auxiliary/TestDataGenerator.robot



*** Keywords ***
User has the project created
    Setup PROJECT_NAME test data
    Create project    ${PROJECT_NAME}
    Check if project is created    ${PROJECT_NAME}


User adds new task to the project
    Setup TASK_NAME test data
    Select project     ${PROJECT_NAME}
    Create task with name    ${TASK_NAME}

User checks if task was created
    Select project    ${PROJECT_NAME}
    Task is listed on project view    ${TASK_NAME}
