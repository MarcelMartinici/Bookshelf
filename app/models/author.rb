class Author < ActiveRecord::Base

  has_many :books
  # books # => [Book.new, Book.new]

  # author = Author.new; author.save
  # author = Author.create
  # author = Author.find_by(name: '')
  # author = Author.find_or_create_by()


  validates :name, presence: true,
                length: { minimum: 5 }
end
