class BooksController < ApplicationController
    def new
        @books=Book.new
    end

    def create
        @books = Book.new(books_params)
        author_name = params["book"]["author"] # John

        # find Author by name
        # if author nil
        # => create Author
        

        @books.author = Author.find_or_create_by(name: author_name)      


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
        @books = Book.find(params[:id])
        @books.destroy
        redirect_to books_path
    end

    private

    def books_params
    	params.require(:book).permit(:title, :description, :year)
    end
    
end
