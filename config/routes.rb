Rails.application.routes.draw do
	
  	resources :books do
  		resources :author
  	end

end
