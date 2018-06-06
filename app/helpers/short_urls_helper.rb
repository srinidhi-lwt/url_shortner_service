module ShortUrlsHelper
	def url_prefix
    %w[http:// www. https://]
  end

  def remove_url_prefix(params)
    url = params[:short_url][:given_url]
    url_prefix.each { |x| url.gsub!(x, '') }
    url
  end
end
