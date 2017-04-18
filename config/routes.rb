Rails.application.routes.draw do
  resources :locations
  resources :roles
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :events
get 'home/index'
get 'home/contact' => 'home#contactus'
post 'home/contact' => 'home#contactus'
get '/search' => 'home#search'
put 'attain/:event_id' => 'events#attain', as: :attain
put 'leave/:event_id' => 'events#leave', as: :leave
get '/dashboard'=> 'home#dashboard'
root 'home#index'


end
