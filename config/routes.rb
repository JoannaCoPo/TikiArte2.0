Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'sessions/create', to: 'sessions#create'

      resources :directors, only: [:show] do
        get '/artists', to: 'directors/artists#index'
        post '/artists', to: 'directors/artists#create'
        get '/artists/:id', to: 'directors/artists#show'
        put '/artists/:id', to: 'directors/artists#update'
        delete '/artists/:id', to: 'directors/artists#delete'
      end
    end
  end
end
