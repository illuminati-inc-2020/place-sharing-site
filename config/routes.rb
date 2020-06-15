Rails.application.routes.draw do
  root 'homepage#index'
  namespace :api do 
    namespace :v1 do 

     resources :user, only: [:index, :show]

     resources :location, only: [:index, :show, :create]

     post 'signup', to: 'sessions#signup'
     post 'login', to: 'sessions#login'
     post 'logout', to: 'sessions#logout'
    end 
  end
end
