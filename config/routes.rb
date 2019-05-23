Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      
      resources :locations
      resources :trips
      resources :list_items
      resources :users
      post '/login', to: 'users#login'
      post '/users', to: 'users#create'
      get '/profile', to: 'users#profile'
      get '/autologin', to: 'users#autologin'
    end 
  end 
end
