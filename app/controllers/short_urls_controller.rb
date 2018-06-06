class ShortUrlsController < ApplicationController
	def index
	end

	def new
	  @url  = ShortUrl.new
	end
end
