require 'rails_helper'

RSpec.describe Paper, type: :model do
  	it "should not be valid without a title" do
			build(:paper, title: "").should_not be_valid
		end

		it "should not be valid without a venue" do
			build(:paper, venue: "").should_not be_valid
		end

		it "should not be valid without a year" do
			build(:paper, year: nil).should_not be_valid
		end

end
