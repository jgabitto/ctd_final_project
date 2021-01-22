Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index'
      get 'user', to: 'users#show'
      put 'update', to: 'users#update'

      get 'rides', to: 'ride_request#index'
      post 'request', to: 'ride_request#create'


      
      post 'login', to: 'authentication#login'
      post 'register', to: 'authentication#register'
    end
  end

  mount ActionCable.server => '/cable'
end
