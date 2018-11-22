Rails.application.routes.draw do
  resources :notifications
  root 'home#index'

  # patch 'users/:id/consultings', controller: 'administrative', action: 'consultings'


  resources :service_orders
  
  devise_for :admins
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users, path: 'users', controllers: { sessions: "users/sessions",
                                                   registrations: 'users/registrations' }

  authenticated :admin do
  	get 'administrative/consultings'
    get 'administrative/users'
    get 'administrative/tecnicos'
    get 'administrative/tecnicosAdd'
    resources :answears
  end

  authenticated :user do
  	resources :consultings
  end

end
