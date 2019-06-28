module ApplicationTitleConcern
	extend ActiveSupport::Concern

	included do 
		before_action :set_title
	end

	def set_title
		@title = "Project Portfolio | My Application"
		@seo_keywords = "My Contents"
	end
end