class PagesController < ApplicationController
	before_action :load_adventure
	before_action :load_page
	# TODO only needed routes get load_adventure and load_page



def create
	
end

def new
	
end

def destory

end

def show
	# @adventure = Adventure.find params[:adventure_id]
	# @page = @adventure.pages.find params [:id]
end

private
	def load_adventure
		@adventure = Adventure.find params[:adventure_id]
		redirect_to root_path if @adventure.blank?
	end

	def load_page
		@page = @adventure.pages.find params[:id]
		redirect_to root_path if @page.blank?
	end
end
