class ShortUrl < ApplicationRecord
  has_many :url_views
  validates :given_url, presence: true
end
