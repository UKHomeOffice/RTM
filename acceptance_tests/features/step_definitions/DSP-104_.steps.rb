When(/^I check the Condtions of lenth of stay checkbox$/) do
  check('conditions-error-checkbox')
end

Then(/^I am on the Error Conditons and Length of stay exit page$/) do                                              
  page.should have_content('Information about leave to remain in the UK')                                                
  find_link('Close').visible?
end