require 'spec_helper'

feature "hidden links" do
	let(:user) {FactoryGirl.create(:user)}
	let(:admin) {FactoryGirl.create(:admin_user)}

	
	context "anonymous users" do
		scenario "cannot see the MSA Link" do
			visit '/'
			assert_no_link_for "MSA"
		end
	end

	context "regular users" do
		before { log_in!(user) }
		scenario "can see the MSA Link" do
			visit '/'
			assert_link_for "MSA"
		end
	end

	context "admin users" do
		before { log_in_as!(admin) }
		scenario "can see the MSA Link" do
			visit '/'
			assert_link_for "MSA"
		end		
	end


end