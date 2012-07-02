RubyGarage::Application.routes.draw do

  root :to => 'ruby_garage#index'

  scope "api" do
    resources :projects
    resources :tasks
  end

  resources :projects
  resources :tasks
end