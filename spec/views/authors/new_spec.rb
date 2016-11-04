require "capybara/rspec"

describe "authors/new" do
	it "displays a new author form" do
		@author = Author.new

		render template: "authors/new.html.erb"

		expect(rendered).to have_field('First name')
		expect(rendered).to have_field('Last name')
		expect(rendered).to have_field('Homepage')
		expect(rendered).to have_button('Create Author')

	end
end