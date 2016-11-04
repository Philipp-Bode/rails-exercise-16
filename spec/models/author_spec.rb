require 'rails_helper'

RSpec.describe Author, type: :model do
  before :each do
  	@author = create(:author)
	end

	context "with Alan Turing as an author" do
		it "returns the correct field names" do
			expect(@author.first_name).to eq 'Alan'
			expect(@author.last_name).to eq 'Turing'
			expect(@author.homepage).to eq 'http://wikipedia.org/wiki/Alan_Turing'

			expect(@author.name).to eq 'Alan Turing'
		end

		it "should not be valid without a last name" do
			build(:author, last_name: "").should_not be_valid
		end
	end
end