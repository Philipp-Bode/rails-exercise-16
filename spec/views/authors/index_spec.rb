require 'rails_helper'


describe "authors/" do
	it "displays author details" do
		@authors = [create(:author)]

		render template: "authors/index.html.erb"

		expect(rendered).to match /Alan Turing/


	end
end