Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      
      resources :locations
      resources :trips
      resources :list_items
      resources :users, only: [:show]
      post '/users/login', to: 'users#login'
      # get '/profile', to: 'users#profile'
    end 
  end 
end
