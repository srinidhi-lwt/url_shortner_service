module ShortUrlsHelper
  def remove_url_prefix(params)
    url = params[:short_url][:given_url]
    url.sub(/^https?\:\/\//, '').sub(/www.?/,'')
  end

  def application_host(url)
    "#{request.host}/#{url.shortened_url}"
  end

  def add_url_prefix(url)
    "https://www.#{url.formatted_url}"
  end
end

