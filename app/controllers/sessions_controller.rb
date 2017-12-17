class SessionsController < ApplicationController

	def login(user)

		session[:user_id] = user.id 
		@current_user = user 

	end 


	def current-user 

		@current_user || User.find(session[:user_id])

	end 

	def logout 

		@current_user = session[:user_id] = nil 

	end 

	
end
