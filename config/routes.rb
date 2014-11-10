Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  root 'books#index'
  devise_for :users
  resources :books 
  resources :author
end
