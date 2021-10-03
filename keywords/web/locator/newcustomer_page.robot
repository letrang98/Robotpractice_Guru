*** Variables ***
&{dictNewCustomerPage}
...     newcustomermessage=xpath=//p[contains(text(),'Add New Customer')]
...     customername=xpath=//*[@name='name']
...     gender=//*[@name='rad1']
...     dob=xpath=//*[@name='dob']
...     address=xpath=//*[@name='addr']
...     city=xpath=//*[@name='city']
...     state=xpath=//*[@name='state']
...     pin=xpath=//*[@name='pinno']
...     mobilephone=xpath=//*[@name='telephoneno']
...     email=xpath=//*[@name='emailid']
...     password=xpath=//*[@name='password']
...     submitbutton=xpath=//input[@type='submit']
...     resetbutton=xpath=//input[@type='reset']

