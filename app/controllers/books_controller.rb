class BooksController < ApplicationController
    def new
    
    end
    def create
        @books = Books.new(books_params)
        @books.save
        redirect_to @books
    end
    def show
        @books = Books.find(params[:id])
    end
private
    def books_params
    	params.require(:books).permit(:title, :author, :description, :year)
    end
    public
    def index
       @books = Books.all
    end
end
