Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  apipie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :webservices do
  	post '/login/signin'
  	post '/login/signup'
  	post '/login/update_address'
  	post '/login/update_photos'
    post '/login/update_question'
  	post '/syndicate/getSyndicates'
  end
end
