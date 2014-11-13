require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe "GET #index" do 
    
    it "populates an array of books" do
       book = FactoryGirl.create :book 
       get :index 
       assigns(:book).should eq([book])
    end

    it "renders the :index view" do
       get :index
       response.should render_template :index
    end
  end 

  describe "GET #show" do 
    let!(:book1) { FactoryGirl.create :book }
    
    it "assigns the requested book to @book" do 

      get :show, id: book1 
      assigns(:book).should eq(book1) 
    end 
    
    it "renders the #show view" do 

      get :show, id: book1
      response.should render_template :show 
    end 
  end
    
  describe "GET #new" do 
    
    it "assigns a title, author, and year to the new book" do 
    get :new
    end 
  end

  describe "POST create" do 
    
    context "with valid attributes" do 
      
      it "creates a new book" do  
        expect {
          post :create, book: { title: "Test", year: "2014", author: 'John Doe' }
        }.to change(Book,:count).by(1) 
      end 
      
      it "redirects to the new book" do 
        post :create, book: 
        FactoryGirl.attributes_for(:book) 

      end 
    end 

    context "with invalid attributes" do 
      
      it "does not save the new book" do 
        expect{ post :create, book: FactoryGirl.attributes_for(:invalid_book) }.to_not change(Book,:count) 
      end 
      
      it "re-renders the new method" do 
        post :create, book: FactoryGirl.attributes_for(:invalid_book) 
        response.should render_template :new 
      end 
    end 
  end

  # describe 'PUT update' do 
  #   before :each do 
  #     @book = FactoryGirl.create :book, title: 'Game of thrones'
  #   end 
  #       let!(:book1) { FactoryGirl.create :book }
  #   context "valid attributes" do 
    
  #     it "located the requested @book" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:book) 
  #       assigns(:book).should eq(@book) 
  #     end 
    
  #     it "changes @book's attributes" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:book, title: 'Game of thrones') 
  #       @book.reload @book.title.should eq('Game of thrones') 
  #     end 
    
  #     it "redirects to the updated book" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:book) 
  #       response.should redirect_to @book 
  #     end 
  #   end 
    
  #   context "invalid attributes" do 
    
  #     it "locates the requested @book" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:invalid_book) 
  #       assigns(:book).should eq(@book) 
  #     end 
    
  #     it "does not change @book's attributes" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:book, title: nil) 
  #       @book.reload @book.title.should eq('Game of thrones 2') 
  #     end 
    
  #       it "re-renders the edit method" do 
  #       put :update, id: @book, book: FactoryGirl.attributes_for(:invalid_book) 
  #       response.should render_template :edit 
  #     end 
  #   end 
  # end

  describe 'DELETE destroy' do 
    before :each do 
      @book = FactoryGirl.create :book
    end 
    
    it "deletes the book" do 
      expect{ delete :destroy, id: @book }.to change(Book,:count).by(-1) 
    end 
    
    it "redirects to books#index" do 
      delete :destroy, id: @book 
      response.should redirect_to books_url 
    end 
  end
end