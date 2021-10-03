*** Setting ***
Resource    ${CURDIR}/../web_resources_import.robot
Resource    ${CURDIR}/../locator/login_page.robot
Resource    ${CURDIR}/../locator/home_page.robot

***Keyword***
Login page
    [Arguments]     ${userid}      ${password}
    Verify loginpage is loaded
    Input username and password
    Verify login successfully or not

Verify loginpage is loaded
    common_keywords.Verify Web Element Is Visible       ${dictLoginPage.logo}
    common_keywords.Verify Web Element Is Visible     ${dictLoginPage.guideline}
Input username and password
    common_keywords.Input data  ${dictLoginPage.userid}  ${userid}
    common_keywords.Input data  ${dictLoginPage.password}  ${password}
Verify login successfully or not
    common_keywords.Click Element  ${dictLoginPage.loginbutton}  3s
    common_keywords.Verify Web Element Is Visible  ${dictHomePage.welcome}
    common_keywords.Verify Web Element Is Visible  ${dictHomePage.welcomemessage}
    common_keywords.Verify Web Element Is Visible  ${dictHomePage.logoutbutton}