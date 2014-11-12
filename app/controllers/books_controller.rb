class BooksController < ApplicationController
    before_filter :authenticate_user!, except: [:index, :show, :edit, :update, :destroy]
    load_and_authorize_resource
    before_action :apply_filter, only: [:show, :edit, :update, :destroy]

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        author_name = params["book"]["author"] 
        @book.author = Author.find_or_create_by(name: author_name.downcase)     
        @book.cathegory = Cathegory.create_cathegory(params[:book][:cathegory].downcase)
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
        @book.author = Author.find_or_create_by(name: author_name.downcase)
        @book.cathegory = Cathegory.create_cathegory(params[:book][:cathegory].downcase)  
        if @book.update(book_params)
            flash[:notice] = "Successfully updated book."
            redirect_to @book
        else
            render 'edit'
        end
    end

    def destroy
        @book.destroy
        flash[:notice] = "Successfully deleted book."
        redirect_to books_path
    end
    
    private

    def apply_filter
        @book = Book.find(params[:id])
    end

    def book_params
    	params.require(:book).permit(:title, :description, :year, :cover)
    end
end
