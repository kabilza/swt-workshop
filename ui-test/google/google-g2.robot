*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${keyword}    USElection2020
${URL}    https://www.google.com
${expected result}    US Election 2020 - BBC News

*** Test Cases ***
Test search keywork US Election 2020 and verify search result on Google
    Type google.com
    Search keyword
    Press Enter
    Check and look for the result
    Close the Browser

*** Keywords ***
Type google.com
    Open Browser    ${URL}    ${browser}

Search keyword
    Input Text    name:q    ${keyword}

Press Enter
    Press Keys    name:q    RETURN

Check and look for the result
    Page Should Contain    ${expected result}

Close the Browser
    Close Browser