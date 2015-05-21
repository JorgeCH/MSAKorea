class WelcomeController < ApplicationController
  def index
  	@descriptions = Description.all
  	@activities = Activity.all
  end
end