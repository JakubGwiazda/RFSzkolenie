*** Settings ***
Resource  testKeywords.robot
*** Test case ***
Test debuggera
  Log To Console  Test was started
  Set Test Variable  ${test_variable}  startValue
  Change value
  Set Test Variable  ${test_variable}  endValue
