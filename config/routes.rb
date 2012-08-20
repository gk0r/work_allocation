WorkAllocation::Application.routes.draw do
  root :to => 'users#index'
  
  resources :deliverables, :projects, :users, :software_releases, :roles, :teams
  
end
