Rails.application.routes.draw do

  mount Lists::Engine => "/lists"
end
