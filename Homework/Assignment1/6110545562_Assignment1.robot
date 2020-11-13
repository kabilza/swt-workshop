*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://twitter.com/login
${id}    ****
${password}    ****
${sentence}    สวัสดี robot framework

*** Test Cases ***
Test login and post tweet on Twitter
    Type twitter.com
    Search element login
    Search element password
    Click submit
    Enter sentence
    Press tweet

*** Keywords ***
Type twitter.com
    Open Browser    ${URL}    chrome
    
Search element login
    Wait Until Page Contains    Log in to Twitter
    Input Text    //*[@id="react-root"]/div/div/div[2]/main/div/div/div[1]/form/div/div[1]/label/div/div[2]/div/input    ${id}

Search element password
    Input Text    //*[@id="react-root"]/div/div/div[2]/main/div/div/div[1]/form/div/div[2]/label/div/div[2]/div/input    ${password}

Click submit
    Press Keys    //*[@id="react-root"]/div/div/div[2]/main/div/div/div[1]/form/div/div[3]/div/div    RETURN

Enter sentence
    Input Text    //*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[1]/div/div/div/div/div/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div    ${sentence}

Press tweet
    Press Keys    //*[@id="react-root"]/div/div/div[2]/main/div/div/div/div/div/div[2]/div/div[2]/div[1]/div/div/div/div[2]/div[4]/div/div/div[2]/div[3]    RETURN

    

