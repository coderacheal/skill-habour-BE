Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, controllers: { sessions: 'sessions' }
  devise_for :users,
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'register'
  },
  controllers: {
    registrations: 'registrations'
  }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :courses do
    resources :reservations do
    end
  end

end
