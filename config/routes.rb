RubyGarage::Application.routes.draw do

  root :to => 'ruby_garage#index'

  scope "api" do
    resources :projects
    resources :tasks

    resources :new_way
  end
end