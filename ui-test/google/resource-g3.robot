*** Variables ***
${browser}    chrome
${keyword}    USElection2020
${URL}    https://www.google.com
${expected result}    US Election 2020 - BBC News

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