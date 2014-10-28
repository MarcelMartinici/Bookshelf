class BooksController < ApplicationController
    load_and_authorize_resource
    before_action :apply_filter, only: [:show, :edit, :update, :destroy]
    #guest le vede pe toate dar nu face nimic
    #moderator le vede pe toate dar le schimba doar pe ale lui
    #admin le vede si le schimba pe toate
    def new
        @book=Book.new
    end

    def create
        @book = Book.new(book_params)
        author_name = params["book"]["author"] # John
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
       @book = Book.all
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
