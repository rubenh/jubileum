Jubileum::Application.routes.draw do

  resources :stories

  namespace :admin do
    resources :stories
    root to: 'stories#index'
  end

  root :to => 'stories#new'

end
