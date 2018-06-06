class ShortUrlsController < ApplicationController
	include ShortUrlsHelper

	def index
	end

	def new
	  @url  = ShortUrl.new
	end

	def create
    formatted_url = remove_url_prefix(params)
    url = ShortUrl.where(formatted_url: formatted_url).first_or_create
    redirect_to root_path
	end

	private

	def url_params
    params.require(:url).permit(:given_url)
	end
end
