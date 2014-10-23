NewAuthDemo::Application.routes.draw do
  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy, :new]

  get "static_pages/index"

  get "static_pages/about"

  get "static_pages/contact"

  root :to => "users#show"
end
