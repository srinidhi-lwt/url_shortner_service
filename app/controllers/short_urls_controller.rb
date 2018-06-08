class ShortUrlsController < ApplicationController
  include ShortUrlsHelper
  before_action :find_url, only: [:show, :destroy]
  before_action :validate_url, only: [:create]

  def index
    @urls = ShortUrl.all
  end

  def new
    @url  = ShortUrl.new
  end

  def create
    formatted_url = remove_url_prefix(params)
    url = ShortUrl.where(formatted_url: formatted_url).first_or_create(url_params)
    redirect_to short_url_path(url.id)
  end

  def show
  end

  def destroy
    @url.destroy
    redirect_to root_path
  end

  private

  def url_params
    params.require(:short_url).permit(:given_url)
  end

  def find_url
    @url = ShortUrl.find(params[:id])
  end

  def validate_url
    return redirect_to root_path if params[:short_url][:given_url].blank?
  end
end
