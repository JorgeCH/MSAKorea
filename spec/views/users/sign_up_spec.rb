require 'spec_helper'

feature 'Sign up' do
	scenario 'Successful sign up' do
		visit '/'
		click_link 'Sign up'

		fill_in "name", with: "Jorge"
		fill_in "Email", with: "user@example.com"
		fill_in "user[password]", with: "password"
		fill_in "Password confirmation", with: "password"
		click_link "Sign up"
		#expect(page).to have_content("You have signed up successfully.")
	end
end

