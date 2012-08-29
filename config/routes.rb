WorkAllocation::Application.routes.draw do

  mount RailsAdmin::Engine => '/rails_admin', :as => 'rails_admin'

  devise_for :admins

  resources :deliverables, :projects, :users, :software_releases, :roles, :teams, :code, :tech_specs, :ba_specs, :deliverables, :welcome

  root :to => 'welcome#home'

  get     "sign_up"   => "users#new"
  get     "sign_in"   => "sessions#new"
  post    "sign_in"   => "sessions#create"
  get     "sign_out"  => "sessions#destroy"
  
end
