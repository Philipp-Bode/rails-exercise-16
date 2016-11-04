describe "authors/new" do
	it "displays a new author form" do
		render template: "authors/new.html.erb"
		expect(rendered).to match /first name/
	end
end