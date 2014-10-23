class AuthorController < ApplicationController

	def new
        @author=Author.new
    end

    def create
        @author = Author.new(author_params)
        if @author.save
            redirect_to @author
        else
            render 'new'
        end
    end

    def edit
       @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
        if @author.update(books_params)
            redirect_to @books
        else
            render 'edit'
        end
    end

private

    def books_params
    	params.require(:author).permit(:name)
    end

end
