class HouseUsersController < ApplicationController

	def index 

		@houses = House.all

		current_user 
	end 


	def create 

		@user = current_user
		@house = House.find(params[:house_id])
		@user.houses.push(@house)

		redirect_to user_libraries(@user)
	end 
end
