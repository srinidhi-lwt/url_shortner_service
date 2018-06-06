class ShortUrlsController < ApplicationController
  include ShortUrlsHelper

  def index
    @urls = ShortUrl.all
  end

  def new
    @url  = ShortUrl.new
  end

  def show
    @url = ShortUrl.find(params[:id])
  end

  def create
    formatted_url = remove_url_prefix(params)
    url = ShortUrl.where(formatted_url: formatted_url).first_or_create(url_params)
    redirect_to short_url_path(url.id)
  end

  private

  def url_params
    params.require(:short_url).permit(:given_url)
  end
end
