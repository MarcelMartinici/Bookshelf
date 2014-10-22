class BooksController < ApplicationController
    def new
        @books=Books.new
    end
    def create
  @books = Books.new(books_params)
 
  if @books.save
    redirect_to @books
  else
    render 'new'
  end
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
