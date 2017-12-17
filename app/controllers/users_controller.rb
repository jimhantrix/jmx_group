class UsersController < ApplicationController



	

	def index 

		@Users = User.all

	end 


	def new 

		render :new 

	end 



	def create 

		user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email] 

		if user &&user.authenticate ( params[:password] )

			login(user)

			redirect_to "/login"

			redirect_to User_path(user)

		end 



	end 


	def show 

		@user = User.find(params[:id])

	end 
end

