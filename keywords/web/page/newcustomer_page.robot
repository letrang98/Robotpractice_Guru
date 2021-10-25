*** Setting ***
Resource    ${CURDIR}/../web_resources_import.robot
Resource    ${CURDIR}/../locator/home_page.robot
Resource    ${CURDIR}/../locator/newcustomer_page.robot
Resource    ${CURDIR}/../locator/login_page.robot

***Keyword***
Add new customer
    #[Arguments] ${customer_name}    ${gender_value}     ${dob}      ${address}      ${city}     ${state}        ${pin}      ${mobilephone}      ${email}        ${password}
    login_page.Login page   ${userid}      ${password}
    home_page.Go to New customer page
    Verify new customer page is loaded
    [Arguments]     ${customer_name}    ${gender_value}     ${dob}      ${address}      ${city}     ${state}        ${pin}      ${mobilephone}      ${email}        ${password}     
    Fill customer information      ${customer_name}    ${gender_value}     ${dob}      ${address}      ${city}     ${state}        ${pin}      ${mobilephone}      ${email}        ${password}
    Submit customer information

Verify new customer page is loaded
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.newcustomermessage}
    log to console  "Add new customer is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.customername}
    log to console  "Customer Name box is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.gender}
    log to console  "Gender option is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.dob}
    log to console  "Date of birth selection is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.address}
    log to console  "Address field is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.city}
    log to console  "City field is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.state}
    log to console  "State field is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.pin}
    log to console  "PIN settings is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.mobilephone}
    log to console  "Mobile Phone field is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.email}
    log to console  "Email field is displayed"
    common_keywords.Verify Web Element Is Visible  ${dictNewCustomerPage.password}
    log to console  "Password is displayed"

Fill customer information
    [Arguments]     ${customer_name}    ${gender_value}     ${dob}      ${address}      ${city}     ${state}        ${pin}      ${mobilephone}      ${email}        ${password}
    Input customer name     ${customer_name} 
    # Input gender for customer       ${gender_value}
    Select Gender Radio By Gender option        f
    Input date of birth for customer        ${dob}
    Input address for customer      ${address}  
    Input City Address      ${city}
    Input State Address     ${state}
    Input PIN settings      ${pin}
    Input phone number      ${mobilephone}
    Input email address     ${email}
    Input customer password     ${password}
Input customer name
    [Arguments]      ${customer_name}    
    common_keywords.Input data  ${dictNewCustomerPage.customername}  ${customer_name}
    log     value.${customer_name}
Input gender for customer
    [Arguments]      ${gender_value}
    common_keywords.Select Radio button  ${dictNewCustomerPage.gender}  ${gender_value}
    log     value.${gender_value}
Input date of birth for customer
    [Arguments]      ${dob}
    common_keywords.Input data  ${dictNewCustomerPage.dob}  ${dob}
    log     value.${dob}
Input address for customer
    [Arguments]      ${address}
    common_keywords.Input data  ${dictNewCustomerPage.address}  ${address}
    log     value.${address}
Input City Address
    [Arguments]      ${city}
    common_keywords.Input data  ${dictNewCustomerPage.city}  ${city}
    log     value.${city}
Input State Address
    [Arguments]      ${state}
    common_keywords.Input data  ${dictNewCustomerPage.state}  ${state}
    log     value.${state}
Input PIN settings
    [Arguments]      ${pin}
    common_keywords.Input data  ${dictNewCustomerPage.pin}  ${pin}
    log     value.${pin}
Input phone number
    [Arguments]      ${mobilephone}
    common_keywords.Input data  ${dictNewCustomerPage.mobilephone}  ${mobilephone}
    log     value.${mobilephone}
Input email address
    [Arguments]      ${email}
    common_keywords.Input data  ${dictNewCustomerPage.email}  ${email}
    log     value.${email}
Input customer password
    [Arguments]      ${password}
    common_keywords.Input data  ${dictNewCustomerPage.password}  ${password}
    log     value.${password}

Submit customer information
    common_keywords.Click Element  ${dictNewCustomerPage.submitbutton}  3s

# gender_value = f -> female
# gender_value = m -> male
Select Gender Radio By Gender option
    [Arguments]         ${gender_value}
    ${gender_locator}=                  String.Format String            ${dictNewCustomerPage}[radio_gender]        gender=${gender_value}
    common_keywords.Click Element                   ${gender_locator}


