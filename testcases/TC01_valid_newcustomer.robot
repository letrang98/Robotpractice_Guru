*** Setting ***
Resource    ${CURDIR}/../keywords/web/web_resources_import.robot
Resource    ${CURDIR}/../resources/imports_resources.robot


Suite Teardown      Close All Browsers

Library     DataDriver      file=${CURDIR}/../testdata/TC01/TC01_data.csv       encoding=utf_8

Test Setup           common_keywords.Open browser to page            ${base_url}
Test Teardown        Close Browser

Test Template        TC01_Valid_Customer

*** Test Cases ***
TC01       ${customer_name}      ${gender_value}     ${dob}      ${address}      ${city}     ${state}    ${pin}      ${mobilephone}      ${email}        ${password}  

    
*** Keywords ***
TC01_Valid_Customer
    [Arguments]     ${customer_name}      ${gender_value}     ${dob}      ${address}      ${city}     ${state}    ${pin}      ${mobilephone}      ${email}        ${password}
    newcustomer_page.Add new customer   ${customer_name}      ${gender_value}     ${dob}      ${address}      ${city}     ${state}    ${pin}      ${mobilephone}      ${email}        ${password}
