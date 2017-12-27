class User < ApplicationRecord


	has_many :house_users
	has_many :houses, through: :house_users
	has_secure_password 
	
end
