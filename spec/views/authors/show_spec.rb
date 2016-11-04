require 'rails_helper'


describe "authors/:id" do
	it "displays author details" do
		@author = create(:author)

		render template: "authors/show.html.erb"

		expect(rendered).to match /Alan/
		expect(rendered).to match /Turing/

		expect(rendered).to have_field('Title')
		expect(rendered).to have_field('Venue')
		expect(rendered).to have_field('Year')
		expect(rendered).to have_button('Create Paper')


	end
end