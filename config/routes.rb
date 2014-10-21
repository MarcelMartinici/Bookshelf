Rails.application.routes.draw do
  resources :book
  root to: 'books#new'
  
end
