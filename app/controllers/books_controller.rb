class BooksController < ApplicationController
    def new
        @books=Book.new
    end

    def create
        @books = Book.new(books_params)
 
        if @books.save
            redirect_to @books
        else
            render 'new'
        end
    end
    
    def show
        @books = Book.find(params[:id])
    end
    def index
       @books = Book.all
    end
    def edit
       @books = Book.find(params[:id])
    end
    def update
       @books = Book.find(params[:id])
 
    if @books.update(books_params)
       redirect_to @books
  else
    render 'edit'
  end
end
    def destroy
        @article = Book.find(params[:id])
        @article.destroy
 
        redirect_to books_path
end
    private
    def books_params
    	params.require(:book).permit(:title, :author, :description, :year)
    end
end
