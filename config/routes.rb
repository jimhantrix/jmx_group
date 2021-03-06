Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
  
  root "users#index"

  get "'users" => "users#index", as: "users"

  get "/signup" => "users#new", as: "new_user"

  post "/users" => "users#create"

  get "/users/:id" => "users#show", as: "user"

  get "/login" => "session#new"

  post "/sessions" => "sessions#create"
  
  get "/logout" => "sessions#destroy"

  get "/houses" => "houses#index"

  get "/houses" => "houses#new", as: "new_house"

  post "/houses" => "houses#create"

  get "/users/:user_id/houses" => "house_users#index", as: "user_houses"

  get "/users/:user_id/houses" => "houses_users#index", as: "house_users"

  

end
