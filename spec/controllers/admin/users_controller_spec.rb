require 'spec_helper'

describe Admin::UsersController do
	let(:user) { FactoryGirl.create(:user) }
	
	context "standard users" do
		before { log_in(user) }

		it "are not able to access the index action" do
			get 'index'
			expect(response).to redirect_to('/')
			expect(flash[:alert]).to eql("Debes loggearte como administrador para hacer eso.")
		end
	end
end