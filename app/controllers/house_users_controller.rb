class HouseUsersController < ApplicationController

	def index 

		@user = User.find(params[:user_id])
		@houses = @user.houses 


	end 
end
