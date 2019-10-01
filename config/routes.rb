Rails.application.routes.draw do
	# POST /premises GET /premises
  resources :premises, only: [:index, :create]

  # GET /premises/:premise_id/stations
  resources :premises, only: [:show] do
  	resources :stations, only: [:index]
  end

  # POST /v1/stations
  namespace :v1 do
  	resources :stations, only: [:create]
  end

end
