class Book < ActiveRecord::Base

	belongs_to :author
	# author # => Author.new
  # obj.author =
  # author_id
  # author_id=  	
  validates :title, presence: true,length: { minimum: 3 }
  validates :year, presence: true
end
