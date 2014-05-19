class LibrariesController < ApplicationController

	def index
		@libraries = Library.all

		respond_to do |format|
			format.html
			format.json {render :json => { :libraries => @libraries.as_json(only: [:url])} }
	end

	def new
		@library = Library.new
	end

	def create
		
	end
	
	def show
		
	end
end
