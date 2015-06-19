class WelcomeController < ApplicationController
  def index
  	@descriptions = Description.all
  	@activities = Activity.all
  	@jobs = Job.all
  	@announcements = Announcement.all
  	@scholarships = Scholarship.all
  	@prearrivals = Prearrival.all
  	@lives = Life.all
  end
end