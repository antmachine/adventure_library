class AdventuresController < ApplicationController

	def index
		@adventures = Adventure.all

		respond_to do |f|
			f.html
			f.json { render json: {adventures: @adventures.as_json(
															except: [:id, :library_id]
															include: {:pages => {except: :id}})} }
			end		
	end

	def new
		@adventure = Adventure.new
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

	def show
		
	end
end
