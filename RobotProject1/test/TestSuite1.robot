*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
&{CREDENTIALS}    username=admin    password=admin123    

*** Test Cases ***
GotoGoogleTest
    Create Webdriver    Chrome    executable_path=/Users/dusitmanochai/WebDriver/chromedriver
    Go To    url=https://www.google.com
    Set Browser Implicit Wait    3
    Input Text    name=q    text
    Click Button    name=btnK
    Close Browser
    Log    Go to google completed!

LoginTest
    Create Webdriver    Chrome    executable_path=/Users/dusitmanochai/WebDriver/chromedriver
    Go To    url=https://opensource-demo.orangehrmlive.com/
    Set Browser Implicit Wait    3
    Input Text    id=txtUsername    &{CREDENTIALS}[username]
    Input Password    id=txtPassword        &{CREDENTIALS}[password]
    Click Button    id=btnLogin
    Sleep    3    
    Click Element    id=welcome    
    Click Element    link=Logout    
    Close Browser
    Log    Login&Logout Completed!
    
    