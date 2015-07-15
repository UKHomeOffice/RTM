When(/^I go to Step Five$/) do                                              
  visit config['dev_host']
  click_button('Start')
  choose('received-yes')
  fill_in('delivery-date-day', :with => '17')
  fill_in('delivery-date-month', :with => '08')
  fill_in('delivery-date-year', :with => '1988')
  click_button('Continue')
  choose('address-match-yes')
  fill_in('address-street', :with => '2 Marsham Street')
  fill_in('address-town', :with => 'Westminster')
  fill_in('address-postcode', :with => 'SW1P 4DF')
  click_button('Continue')
  fill_in('fullname', :with => 'Alex Murphy')
  fill_in('date-of-birth-day', :with => '17')
  fill_in('date-of-birth-month', :with => '08')
  fill_in('date-of-birth-year', :with => '1988')
  fill_in('nationality', :with => 'Chinese')
  click_button('Continue')
  fill_in('email', :with => 'alex.murphy@uksogeti.com')
  click_button('Continue')
  page.should have_content('Check your details')
end

Then(/^I am on Step Five$/) do
  page.should have_content('Check your details')
  page.should have_content('Check through the information that you have provided to make sure it is correct. If it is incorrect you can change it here.')
  page.should have_content('Address')
  page.should have_content('Full name')
  page.should have_content('Address')
  page.should have_content('Date of birth')
  page.should have_content('Nationality')
  page.should have_content('Passport')
  page.should have_content('Address')
  page.should have_content('Email')
  page.should have_content('Send your submission')
  page.should have_content('By sending us your details you confirm that the information you have provided is true and that you accept our terms and conditions and privacy policy.hared with other government departments.')
  find_button('Submit').click                             
end     