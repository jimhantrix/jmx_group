class UsersController < ApplicationController

	before_action :aunthenticate_user!, only: [:show]


	def show 

		@user = User.find(params[:id])
		render :show 
	end 

	def new 


	end 





	def create 

		user = User.create(

			first_name: params[:first_name],

			last_name: params[:last_name],

			email: params[:email], 

			password: params[:password]
			
		)

		if user.save 

			session[:user_id] = user.id 

			flash[:sucess] = "Glad you Joined Us!"

			redirect_to user_path(user)

			else 

			  flash[:warning] = "Invalid email or password!"

			  redirect_to "/signup"
			end
		end 
	
	




end 




