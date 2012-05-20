Lists::Engine.routes.draw do
  resources :lists
  root :to => 'manager#index'
end
