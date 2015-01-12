class SiteController < ApplicationController

	def index

	end

	def results
		@search = params[:search]
		list = flickr.photos.getRecent :text => @search, :sort => "relevance"

		@results = list.map do |photo|
			FlickRaw.url_m(photo)
		end
	end


end
