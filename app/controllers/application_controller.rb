class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :apply_filter
  private
  def apply_filter
    @book = Book.find(params[:id])
  end
end
