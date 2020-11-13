*** Settings ***
Library    SeleniumLibrary
Resource    resource-g3.robot

*** Test Cases ***
Test search keywork US Election 2020 and verify search result on Google
    Type google.com
    Search keyword
    Press Enter
    Check and look for the result
    Close the Browser