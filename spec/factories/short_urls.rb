FactoryGirl.define do
  factory :short_url do
    given_url "https://www.stackoverflow.com"
    formatted_url "stackoverflow.com"
	end
end