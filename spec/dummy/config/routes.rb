Rails.application.routes.draw do

  mount Lists::Engine => "/lists"
  root to: 'home#index'
end
