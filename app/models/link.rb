class Link < ActiveRecord::Base

	scope :ultimos, ->{ order("created_at DESC") }
	
end
