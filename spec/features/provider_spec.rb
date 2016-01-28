require 'rails_helper'

# As the owner of the veterinary practice, I have two additional veterinary doctors Bob and Susan. I should be able to track the following information about my fellow veterinary doctors and myself.
# a. Name - must be no longer than 35 characters; value is required b. Address
# c. City
# d. State
# e. Zip - should be at most 5 digits
# f. School Received Degree From
# g. Years in Practice - must be value between 1-100

feature "As a veterinary practice, I track my providers" do
  
  scenario "create a valid provider" do
    visit new_provider_path
    fill_in "Name", with: "Andrew"
    fill_in "Address", with: "123 Elm St"
    fill_in "City", with: "Austin"
    fill_in "State", with: "TX"
    fill_in "Zip", with: "78701"
    fill_in "Certificator", with: "Handabull"
    fill_in "Years practiced", with: "9"
    
    click_button "Create Provider"
    
    expect(page).to have_text("Provider was successfully created.")
  end
  
  scenario "attempt to create a valid provider" do
    visit new_provider_path
    fill_in "Name", with: ""
    fill_in "Address", with: ""
    fill_in "City", with: ""
    fill_in "State", with: ""
    fill_in "Zip", with: ""
    fill_in "Certificator", with: ""
    fill_in "Years practiced", with: ""
    
    click_button "Create Provider"
    
    expect(page).to_not have_text("Provider was successfully created.")
  end
  
  
  
end  