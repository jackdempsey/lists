Rails.application.routes.draw do
  get 'example' => 'home#example', as: :example

  mount Lists::Engine => "/lists"
  root to: 'home#index'
end
