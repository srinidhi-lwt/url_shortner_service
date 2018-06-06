module ShortUrlsHelper
  def remove_url_prefix(params)
    url = params[:short_url][:given_url]
    url.sub(/^https?\:\/\//, '').sub(/www.?/,'')
  end
end

