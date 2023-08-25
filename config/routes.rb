Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :courses 
  
  # resources :user do
  #   resources :reservations do
  #   end
  # end

  namespace :api do
    namespace :v1 do
      post 'users/new_session', to: 'users#new_session'
      post 'users/start', to: 'users#start'
      resources :courses
    end
  end

end
