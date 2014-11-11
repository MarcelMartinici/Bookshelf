require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create :book).to be_valid
  end

  # Book.search # => def self.search
  # Book#search # => def search
  describe ".search" do
    let!(:book1) { FactoryGirl.create :book, title: 'Ruby Metaprogramming' }
    let!(:book2) { FactoryGirl.create :book, title: 'Alice in Wonderland' }

    context "when term present" do
      it "will return found book" do
        expect(Book.search('Ruby').to_a).to eq [book1]
      end
    end

    context "when term is blank" do
      it "will find all books" do
        expect(Book.search('').to_a).to eq [book1, book2]
      end
    end
  end
end
