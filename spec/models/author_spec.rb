require 'rails_helper'

RSpec.describe Author, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create :author).to be_valid
  end

  describe ".create_author_name" do
    let!(:author1) { FactoryGirl.create :author, name: 'Michael' }
    context "when name is equal to name" do

      it "will not create another author" do
        expect(Author.create_author_name('Michael')).to eq author1
      end
    end

    context "when name is not equal to name" do

      it "will create a new author" do
        expect(Author.create_author_name('Andy')).not_to eq author1
      end
    end
  end
end
