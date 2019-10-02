Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :premises, only: [:show] do
      	resources :stations, only: [:index]
      end
      resources :premises, only: [:index, :create]
  	  resources :stations, only: [:index, :create]
    end
  end

end
