Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'users', to: 'users#index'
      
      post 'login', to: 'authentication#login'
    end
  end
end
