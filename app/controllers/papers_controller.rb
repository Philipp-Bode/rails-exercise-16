class PapersController < ApplicationController

	def new
		@paper = Paper.new

		render "new"
	end
end
