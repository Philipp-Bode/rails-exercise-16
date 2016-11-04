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

	it "should update an author" do
		@author = create(:author)

		visit edit_author_path(@author)

		fill_in 'First name', with: 'Alan Mathison'
		fill_in 'Last name', with: 'Turing'

		click_button 'Update Author'

		expect(Author.find(@author.id).first_name).to eq 'Alan Mathison'
	end

	it "should delete an author" do
		@author = create(:author)

		visit authors_path

		click_link 'Destroy'

		expect(Author.all).to be_empty
	end
end