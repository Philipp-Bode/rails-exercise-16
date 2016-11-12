require 'rails_helper'

describe "New Paper page", :type => :feature do

  it "should create a new paper" do

  	visit new_paper_path

  	fill_in 'Title', with: 'COMPUTING MACHINERY AND INTELLIGENCE'
  	fill_in 'Venue', with: 'Mind 49: 433-460'
  	fill_in 'Year', with: 1950

  	click_button 'Create Paper'

  	expect(Paper.where(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)).to exist
  end

  it "should update a paper" do
  	@paper = create(:paper)
  	create(:author)
  	@authors = Author.all

  	visit edit_paper_path(@paper)

  	fill_in 'Title', with: 'TDD: COMPUTING MACHINERY AND INTELLIGENCE'
  	select "Alan Turing", :from => "paper_author_id_1"


  	click_button 'Update Paper'

  	expect(Paper.find(@paper.id).title).to eq 'TDD: COMPUTING MACHINERY AND INTELLIGENCE'
  	expect(Paper.find(@paper.id).authors.first.name).to eq 'Alan Turing'

  end

  it "should delete a paper" do
  	@paper = create(:paper)

  	visit papers_path

  	click_link 'Destroy'

  	expect(Paper.all).to be_empty
  end
end