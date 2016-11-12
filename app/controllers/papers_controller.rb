class PapersController < ApplicationController

	def index
		@papers = Paper.all

		render "index"
	end

	def new
		@paper = Paper.new

		render "new"
	end

	def show
		@paper = Paper.find(params[:id])
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
