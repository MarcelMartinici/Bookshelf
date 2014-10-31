Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resources :books 
  resources :author
end
