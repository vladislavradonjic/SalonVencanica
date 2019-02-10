class ApplicationController < ActionController::Base

	before_action :set_page_defaults

	def set_page_defaults
		@page_title = 'Salon venčanica Snežana'
		@seo_keywords = 'vencanica salon vencanica vencanice svecane haljine venčanica salon venčanica venčanice svečane haljine'
	end

	def current_user
		super || OpenStruct.new(email: 'guest@example.com')		
	end
end
