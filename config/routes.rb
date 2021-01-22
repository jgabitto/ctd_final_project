Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index'
      put 'update', to: 'users#update'

      
      post 'login', to: 'authentication#login'
      post 'register', to: 'authentication#register'
    end
  end

  mount ActionCable.server => '/cable'
end
