Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
     resources :user
     resources :location
     resources :shared_places
    end 
  end
end
