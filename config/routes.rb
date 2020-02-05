Rails.application.routes.draw do  
  resources :records
root 'matric_results#home'
  get '/graphs',  to: 'matric_results#graphs'
  get '/reports', to: 'matric_results#reports'
  get '/record',  to: 'records#index'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
	resources :records
	resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
