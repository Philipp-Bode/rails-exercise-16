require 'rails_helper'

RSpec.describe Paper, type: :model do
  	it "should not be valid without a last name" do
			build(:paper, title: "").should_not be_valid
		end
end
