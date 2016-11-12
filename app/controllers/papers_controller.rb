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

	def edit
		@authors = Author.all
		@paper = Paper.find(params[:id])
	end

	def update
	  @paper = Paper.find(params[:id])
	 
	  if @paper.update(paper_params)
	    redirect_to @paper
	  else
	    render 'edit'
	  end
	end

	def destroy
		@paper = Paper.find(params[:id])

		@paper.destroy
		redirect_to papers_path
	end

	private
	  def paper_params
	    params.require(:paper).permit(:title, :venue, :year, author_ids: [])
	  end
end
