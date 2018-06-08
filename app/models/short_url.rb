class ShortUrl < ApplicationRecord
  SHORT_URL_LENGTH = 7

  has_many :url_views, dependent: :destroy
  validates :given_url, :formatted_url, presence: true
  validates_format_of :given_url, with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i

  before_create :shorten_url

  def shorten_url
    self.shortened_url = ([*('a'...'z'), *('0'...'9')]).sample(SHORT_URL_LENGTH).join
  end

end
