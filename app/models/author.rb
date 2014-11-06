class Author < ActiveRecord::Base
  has_many :book
  validates :name, presence: true

end
