require 'rails_helper'


describe "authors/" do
	it "displays author details" do
		@authors = [create(:author)]

		render template: "authors/index.html.erb"

		expect(rendered).to have_selector "th", text: "Name"

		expect(rendered).to have_selector "a", text: "Add author"
		expect(rendered).to have_selector "a", text: "Show"
		expect(rendered).to have_selector "a", text: "Edit"

	end
end