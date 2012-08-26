WorkAllocation::Application.routes.draw do
  mount RailsAdmin::Engine => '/rails_admin', :as => 'rails_admin'

  devise_for :admins

  resources :code

  resources :tech_specs

  resources :ba_specs

  resources :deliverables

  root :to => 'users#index'
  
  resources :deliverables, :projects, :users, :software_releases, :roles, :teams
  
end
