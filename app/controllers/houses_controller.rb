class HousesController < ApplicationController

	def index 

		@houses = Houses.all

	end 

	def new 

		render :new 

	end 

	
end
