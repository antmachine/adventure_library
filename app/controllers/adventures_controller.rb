class AdventuresController < ApplicationController

	def index
		@adventures = Adventure.all

		respond_to do |f|
			f.html
			# Render JSON, but don't send :id's or :library_id's
			# f.json { render json: {adventures: @adventures.as_json(
			# 												except: [:id, :library_id]
			# 												include: {:pages => {except: :id}})} }
		end		
	end

	def new
		@adventure = Adventure.new
	end

	def create
		adventure = Adventure.create adventure_params
		#TODO add SecureRandom.urlsafe_base64(10) here?
		redirect_to root_path
	end

	def edit
		
	end

	def update
		
	end

	def show
		@adventure = Adventure.find(params[:GUID])
		# TODO adventure_id?
	end

	def destroy
		
	end
	private
		def adventure_params
			params.require(:adventure).permit(:title, :author, :GUID, :library_id, :created_at, :updated_at)
		end


end
