class Author < ActiveRecord::Base

  has_many :book
  validates :name, presence: true,length: { minimum: 5 }
end
