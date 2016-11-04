require 'rails_helper'

describe "Author new test", :type => :feature do
	it "should create a new author" do
		visit new_author_path

		fill_in 'First name', with: 'Alan'
		fill_in 'Last name', with: 'Turing'
		fill_in 'Homepage', with: 'http://wikipedia.org/wiki/Alan_Turing'

		click_button 'Create Author'

		expect(Author.where(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/wiki/Alan_Turing")).to exist
	end
end