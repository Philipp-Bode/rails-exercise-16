require 'rails_helper'

RSpec.describe Author, type: :model do
  before :each do
  	@author = Author.create(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
	end

	context "with Alan Turing as an author" do
		it "returns the correct field names" do
			expect(@author.first_name).to eq 'Alan'
			expect(@author.last_name).to eq 'Turing'
			expect(@author.homepage).to eq 'http://wikipedia.org/Alan_Turing'
		end
	end
end