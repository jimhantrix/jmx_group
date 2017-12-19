class SessionsController < ApplicationController



	def new 

	end 


	def create 

		user = User.find_by (email: params[:email])

		if user && user.authenticate(params[:password])

			session[:user_id] = user.id
			
			flash[:success] = "Good to join Us"

			redirect_to user_path(user)

		else

			flash[:warning] = "Invalid email / password"

			redirect_to "/login"

		end 


	end 

	def destroy 

		logout 

	end 

end
