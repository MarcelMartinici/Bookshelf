Rails.application.routes.draw do
  resources :book
  root to: 'pages#home'
  
end
