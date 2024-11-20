*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}           Chrome
${USERNAME}          Admin
${PASSWORD}          admin123
${EXTRACTED_TEXT}=    None

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
    Click Element    //span[text()='PIM']
    Sleep    3s
    ${EXTRACTED_TEXT}=    Get Text    (//div[@class="oxd-table-cell oxd-padding-cell"]//div)[4]
    Input Text    (//input[@placeholder='Type for hints...'])[1]    ${EXTRACTED_TEXT}
    Sleep    3s
    Click Element    //span[contains(text(), '${EXTRACTED_TEXT}')]
    Sleep    3s
    Input Text    (//input[@class='oxd-input oxd-input--active'])[2]    0360
    Sleep    3s
    Click Element    (//div[@tabindex='0' and text()='-- Select --'])[1]
    Sleep    3s
    Click Element    //span[contains(text(), 'Freelance')]
    Sleep    3s
    Click Element    (//div[@class='oxd-select-text-input'])[2]
    Sleep    3s
    Click Element    //span[contains(text(), 'Current and Past Employees')]
    Sleep    3s
    Input Text    (//input[@placeholder='Type for hints...'])[2]    jam
    Sleep    3s
    Click Element    //span[contains(text(), 'James')]
    Sleep    3s
    Click Element    (//div[text()='-- Select --'])[1]
    Sleep    3s
    Click Element    //span[contains(text(), 'Cyber security ')]
    Sleep    3s
    Click Element    (//div[text()='-- Select --'])[2]
    Sleep    3s
    Click Element    //span[contains(text(), 'Engineering')]
    Sleep    3s
    Click Button    //button[contains(text(), 'Search')]
    Sleep    10s
    [Teardown]    Close Browser

#Amit

