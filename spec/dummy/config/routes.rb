Rails.application.routes.draw do

  mount RspecMountableEngine::Engine => "/rspec_mountable_engine"
end
