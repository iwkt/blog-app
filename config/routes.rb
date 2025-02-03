Rails.application.routes.draw do
#for details on
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/about' , to: 'home#about'
end
