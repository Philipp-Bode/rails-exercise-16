class PapersController < ApplicationController

	def new
		@paper = Paper.new

		render "new"
	end

	def create
	  @paper = Paper.new(paper_params)
	  @paper.save

	  render "new"
	end

	private
	  def paper_params
	    params.require(:paper).permit(:title, :venue, :year)
	  end
end
