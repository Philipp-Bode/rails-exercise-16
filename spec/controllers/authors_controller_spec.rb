require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

	describe "GET new" do
		it "renders the new authors page" do
			get :new
			expect(response).to render_template("new")
		end
	end

	describe "GET index" do
		it "renders the authors index" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "GET author/:id" do
		it "renders an authors page" do

			create(:author)
			get :show, id: 1
			expect(response).to render_template("show")
		end
	end

end
