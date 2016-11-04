describe "authors/new" do
	it "displays a new author form" do
		render template: "authors/new.html.erb"
		expect(rendered).to match /first name/
		expect(rendered).to match /last name/
		expect(rendered).to match /homepage/

	end
end