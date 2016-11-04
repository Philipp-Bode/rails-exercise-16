class AuthorsController < ApplicationController

	def new
		@authors = Author.all
		render "new"
	end

	def create
	  @author = Author.new(author_params)
	  @author.save

	  render "new"
	end

	def show
		@author = Author.find(params[:id])
	end
	 
	private
	  def author_params
	    params.require(:author).permit(:first_name, :last_name, :homepage)
	  end
end
