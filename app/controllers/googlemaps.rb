class GooglemapsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index
		@maps_api_key = ENV["GOOGLE_MAPS_API_KEY"]
    render :index
	end
end
