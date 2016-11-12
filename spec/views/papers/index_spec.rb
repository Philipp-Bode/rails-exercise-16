require 'rails_helper'


describe "papers/" do
	it "displays papers and list options" do
		@papers = [create(:paper)]

		render template: "papers/index.html.erb"

		expect(rendered).to have_selector "th", text: "Title"

		expect(rendered).to have_selector "a", text: "Add paper"
		expect(rendered).to have_selector "a", text: "Show"
		expect(rendered).to have_selector "a", text: "Edit"
		expect(rendered).to have_selector "a", text: "Destroy"

	end
end