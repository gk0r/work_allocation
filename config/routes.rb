WorkAllocation::Application.routes.draw do
  resources :code

  resources :tech_specs

  resources :ba_specs

  resources :deliverables

  root :to => 'users#index'
  
  resources :deliverables, :projects, :users, :software_releases, :roles, :teams
  
end
