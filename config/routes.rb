WorkAllocation::Application.routes.draw do

  resources :deliverables, :projects, :users, :software_releases, :rfcs, :roles, :teams, :code, :tech_specs, :ba_specs, :deliverables, :welcome, :milestones

  root :to => 'welcome#home'
  
  get     "sign_up"   => "users#new"
  get     "sign_in"   => "sessions#new"
  post    "sign_in"   => "sessions#create"
  delete  "sign_out"  => "sessions#destroy"
  
end
