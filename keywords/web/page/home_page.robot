*** Setting ***
Resource    ${CURDIR}/../web_resources_import.robot
Resource    ${CURDIR}/../locator/home_page.robot

***Keyword***
Go to New customer page
    common_keywords.Click Element  ${dictHomePage.newcustomerbutton}  10s
