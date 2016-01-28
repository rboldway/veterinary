require 'rails_helper'

# As one of the practicing veterinary doctors, I should be able to record the following information about a customer's pet.
# a. Name of Pet - required, no more than 35 characters b. Type of Pet - must be a dog, cat, or bird
# c. Breed - required, no more than 35 characters
# d. Age – required
# e. Weight – required
# f. Date of Last Visit - required

feature "As practicing veterinary doctors" do
  
  scenario "create a valid pet" do
    visit new_pet_path
    fill_in "Name", with: "Homer"
    select "dog", from: 'Pet type'
    fill_in "Breed", with: "boxer"
    fill_in "Age", with: "4"
    fill_in "Weight", with: "34 pounds"
    select "2016", from: "pet_last_visit_date_1i"
    select "March", from: "pet_last_visit_date_2i"
    select "15", from: "pet_last_visit_date_3i"
    click_button "Create Pet"
    
    expect(page).to have_text("Pet was successfully created.")
  end
  
  scenario "attempt to create a invalid pet" do
    visit new_pet_path
    fill_in "Name", with: ""
    select "dog", from: 'Pet type'
    fill_in "Breed", with: ""
    fill_in "Age", with: ""
    fill_in "Weight", with: ""
    select "2016", from: "pet_last_visit_date_1i"
    select "March", from: "pet_last_visit_date_2i"
    select "15", from: "pet_last_visit_date_3i"
    click_button "Create Pet"
    
    expect(page).to_not have_text("Pet was successfully created.")
  end
  
  
end  