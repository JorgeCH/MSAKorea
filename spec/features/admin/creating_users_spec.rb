require 'spec_helper'

feature "Creating Users" do
	let!(:admin_user) { FactoryGirl.create(:admin_user) }
	
	before do
		log_in_as!(admin_user)
		visit '/'
		click_link "Admin Panel"
		click_link "Users"
		click_link "New User"
	end

	scenario 'Creating a new user' do

		
		fill_in "Email", with: "user@example.com"
		fill_in "user[password]", with: "password"
		
		
		click_button "Create User"
		expect(page).to have_content("User has been created.")
	end
end