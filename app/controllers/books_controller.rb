class BooksController < ApplicationController
    before_filter :authenticate_user!, except: [:index, :show, :edit, :update, :destroy]
    load_and_authorize_resource
    before_action :apply_filter, only: [:show, :edit, :update, :destroy]

    def new
        @book=Book.new
    end

    def create
        @book = Book.new(book_params)
        author_name = params["book"]["author"] 
        # find Author by name
        # if author nil
        # => create Author
        @book.author = Author.find_or_create_by(name: author_name)      
        @book.user=current_user
        if @book.save
            redirect_to @book
        else
            render 'new'
        end
    end
    
    def show
    
    end

    def index
        #@book = Book.all
        if params[:search]
            @book = Book.search(params[:search])
        else
            @book = Book.all
        end
    end

    def edit
    
    end

    def update        
        author_name = params["book"]["author"]
        @book.author = Author.find_or_create_by(name: author_name)  
        if @book.update(book_params)
            redirect_to @book
        else
            render 'edit'
        end
    end

    def destroy
        @book.destroy
        flash[:notice] = "Successfully deleted book."
        redirect_to books_path
        @book.cover = nil
    end

    private

    def apply_filter
        @book = Book.find(params[:id])
    end

    def book_params
    	params.require(:book).permit(:title, :description, :year, :cover)
    end
end
