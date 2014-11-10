class Author < ActiveRecord::Base
  has_many :book
  validates :name, presence: true

  def self.create_author_name(name)
    Author.find_or_create_by(name: name)
  end

end
