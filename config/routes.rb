Rails.application.routes.draw do
  # for details on
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "articles#index"
  get "/about", to: "articles#about"

  resources :articles, only: [ :show, :new, :create, :edit, :update ]
end
