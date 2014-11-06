Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  root 'welcome#index'
  devise_for :users
  resources :books 
  resources :author
end
