Rails.application.routes.draw do

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
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
  get 'users/report'

#get ':username', to: 'users#show', as: :user



resources :photos do
  get 'preview', on: :member
end
  #get 'users/search', to: 'users#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do 
  	resources :emergencies, controller: :contacts, type: 'Emergency'
  	resources :friends, controller: :contacts, type: 'Friend'
  end
  root to: 'users#index'
end
