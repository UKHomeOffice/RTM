When(/^I go to Step Four of the Lost\/Stolen form$/) do                                                
  visit config['lost_host']
  # page.status_code.should == 200
  click_button('Start')
  choose('UK')
  click_button('Continue')
  fill_in('date-lost-day', :with => '17')
  fill_in('date-lost-month', :with => '08')
  fill_in('date-lost-year', :with => '1988')
  click_button('Continue')
  fill_in('fullname', :with => 'Alex Murphy')
  fill_in('date-of-birth-day', :with => '17')
  fill_in('date-of-birth-month', :with => '08')
  fill_in('date-of-birth-year', :with => '1988')
  fill_in('nationality', :with => 'Chinese')
  click_button('Continue')	
end

Then(/^I am on Step Four of the Lost\/Stolen form$/) do
  page.should have_content('Step 4 of 5')                  
  page.should have_content('Provide your contact details')
end