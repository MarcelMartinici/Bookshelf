class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|  
    flash[:notice] = "Access denied!"  
    redirect_to root_url  
  end 
  
end
