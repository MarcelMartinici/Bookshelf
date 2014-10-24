class BooksController < ApplicationController
    before_action :apply_filter, only: [:show,:edit,:update,:destroy]
    def new
        @book=Book.new
    end

    def create
        @book = Book.new(books_params)
        author_name = params["book"]["author"] # John
        # find Author by name
        # if author nil
        # => create Author
        @book.author = Author.find_or_create_by(name: author_name)      
        
        if @book.save
            redirect_to @book
        else
            render 'new'
        end
    end
    
    def show

    end

    def index
       @book = Book.all
    end

    def edit

    end

    def update

        if @book.update(books_params)
            redirect_to @book
        else
            render 'edit'
        end
    end

    def destroy

        @book.destroy
        redirect_to books_path
    end

    private

    def books_params
    	params.require(:book).permit(:title, :description, :year)
    end
    
end
