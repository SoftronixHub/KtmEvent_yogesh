Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :events
get 'home/index'
get 'home/contact' => 'home#contactus'
post 'home/contact' => 'home#contactus'
get '/search' => 'home#search'
root 'home#index'


end
