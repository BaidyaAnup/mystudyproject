Rails.application.routes.draw do
  devise_for :admins
  # get 'notes/new'
  # get 'notes/create'
  resources :employees do
  	resources :notes, module: :employees
  end
  resources :companies do 
  	resources :notes, module: :companies
  end
  get 'contacts/new'
  get 'contacts/edit'
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do 
  	resources :emergencies, controller: :contacts, type: 'Emergency'
  	resources :friends, controller: :contacts, type: 'Friend'
  end
  root to: 'users#index'
end
