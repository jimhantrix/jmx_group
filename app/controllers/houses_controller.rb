class HousesController < ApplicationController

	def index 

		@houses = House.all

	end 

	def new 

		render :new 

	end 

	def create 

		house = House.create(location: params[:location],
		 		rental: params[:rental], 
		 		sleeps: params[:sleeps], 
		 		duration: params[:duration], 
		 		house_rules: params[:house_rules])

		redirect_to houses_path
	end 

	
end
