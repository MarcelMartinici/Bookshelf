class BooksController < ApplicationController
    def new
           
    end
    def create
        @books = books.new(books_params)
        @books.save
        redirect_to @books
    end
private
    def books_params
    	params.require(:books).permit(:title, :author, :description, :year)
    end
end
