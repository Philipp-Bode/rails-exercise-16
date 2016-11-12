require 'rails_helper'


describe "papers/:id" do
	it "displays paper details" do
		@paper = create(:paper)

		@paper.authors << create(:author)

		render template: "papers/show.html.erb"

		expect(rendered).to match /COMPUTING MACHINERY AND INTELLIGENCE/
		expect(rendered).to match /Mind 49: 433-460/
		expect(rendered).to match /1950/
		expect(rendered).to match /Alan Turing/

	end
end