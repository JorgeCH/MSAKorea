require 'spec_helper'

feature "hidden links" do
	let(:user) {FactoryGirl.create(:user)}
	let(:admin) {FactoryGirl.create(:admin_user)}

	
	context "anonymous users" do
		scenario "cannot see the New Life Link" do
			visit projects_path
			assert_no_link_for "New Life"
		end


		scenario "cannot see the Edit Link" do
			visit project_path(project)
			assert_no_link_for "Edit"
		end

		scenario "cannot see the Destroy Link" do
			visit project_path(project)
			assert_no_link_for "Destroy"
		end
		
	end

	context "regular users" do
		before { log_in!(user) }
		scenario "can see the New Life Link" do
			visit '/projects'
			assert_link_for "New Life"
		end


		scenario "can see the Edit Link" do
			visit project_path(project)
			assert_link_for "Edit"
		end

		scenario "can see the Destroy Link" do
			visit project_path(project)
			assert_link_for "Destroy"
		end

	end

	context "admin users" do
		before { log_in_as!(admin) }
		scenario "can see the New Life Link" do
			visit '/projects'
			assert_link_for "New Life"
		end


		scenario "can see the Edit Link" do
			visit project_path(project)
			assert_link_for "Edit"
		end

		scenario "can see the Destroy Link" do
			visit project_path(project)
			assert_link_for "Destroy"
		end
		
	end


end