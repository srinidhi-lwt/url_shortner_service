require 'rails_helper'

RSpec.describe ShortUrl, type: :model do

  describe "" do
  	let(:url) {FactoryGirl.build(:short_url)}
  	let!(:dup_url) {FactoryGirl.create(:short_url)}

  	it "is valid with without given_url" do
  		url.given_url = nil
  		expect(url).to_not be_valid
  	end

  	it "is valid with valid given_url" do
  		expect(url).to be_valid
  	end

    it "is valid with without formatted_url" do
      url.formatted_url = nil
      expect(url).to_not be_valid
    end

    it "is valid with valid formatted_url" do
      expect(url).to be_valid
    end
  end
end
