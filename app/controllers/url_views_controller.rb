class UrlViewsController < ApplicationController
  include ApplicationHelper
  include ShortUrlsHelper

	def create
    url = ShortUrl.find(params[:short_url_id])
    url.url_views.create(url_views_params)
    redirect_to add_url_prefix(url)
	end

	private

	def url_views_params
    {}.tap do |x|
      x[:ip_address] = client_ip
      x[:browser_info] =  browser
      x[:browser_platform] = browser.platform
    end
  end
end
