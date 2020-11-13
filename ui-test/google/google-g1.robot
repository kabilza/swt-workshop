*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${keyword}    USElection2020
${expected result}    US Election 2020 - BBC News

*** Test Cases ***
Test search keywork US Election 2020 and verify search result on Google
    Type google.com
    Search keyword USElection2020
    Press Enter
    Check and look for the link "US Election 2020 - BBC News"

*** Keywords ***
Type google.com
    Open Browser    https://www.google.com    chrome

Search keyword USElection2020
    Input Text    name:q    ${keyword}

Press Enter
    Press Keys    name:q    RETURN

Check and look for the link "US Election 2020 - BBC News"
    Page Should Contain    ${expected result}