WorkAllocation::Application.routes.draw do

  resources :milestones

  resources :rfcs

  resources :deliverables, :projects, :users, :software_releases, :rfc, :roles, :teams, :code, :tech_specs, :ba_specs, :deliverables, :welcome

  root :to => 'welcome#home'

  get     "sign_up"   => "users#new"
  get     "sign_in"   => "sessions#new"
  post    "sign_in"   => "sessions#create"
  get     "sign_out"  => "sessions#destroy"
  delete  "sign_out"  => "sessions#destroy"
  
end
