class BooksController < ApplicationController
    def new
           
    end
    def create
        render plain: params[:books].inspect
    end
end
