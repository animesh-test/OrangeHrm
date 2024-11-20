*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}           Chrome
${USERNAME}          Admin
${PASSWORD}          admin123


*** Test Cases ***
Login to OrangeHRM
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    //input[@name="username"]    10s
    Input Text    //input[@name="username"]    ${USERNAME}
    Input Text    //input[@name="password"]    ${PASSWORD}
    Click Button    //button[@type="submit"]
    Wait Until Page Contains Element    //span[text()="Dashboard"]    10s
    Sleep    5s
    Click Element    //span[text() = 'Admin']
    Sleep    3s
    Input Text    (//input[@class = "oxd-input oxd-input--active"])[2]    Admin
    Sleep    3s
    Click Element    (//i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[1]
    Sleep    3s
    Click Element    //span[text() = 'ESS']
    Sleep    4s
    Input Text    //input[@placeholder = "Type for hints..."]    Ha
    Sleep    3s
    Click Element    //span[contains(text(), "Hari")]
    Sleep    5s
    Click Element    (//i[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[2]
    Sleep    3s
    Click Element    //span[text() = 'Enabled']
    Sleep    4s
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    5s
    Click Element    //span[text()='PIM']
    Sleep    3s
    [Teardown]    Close Browser
