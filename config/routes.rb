Lists::Engine.routes.draw do
  resources :lists do
    resources :list_items, only: [:destroy]
  end

  root :to => 'manager#index'
end
