*** Setting ***
Resource    ${CURDIR}/../../resources/imports_resources.robot
Resource    ${CURDIR}/common/common_keywords.robot

Resource    ${CURDIR}/page/home_page.robot
Resource    ${CURDIR}/page/login_page.robot
Resource    ${CURDIR}/page/newcustomer_page.robot


*** Keywords ***
Global init
    Set Global Variable    ${language}    ${language.lower()}