class Book < ActiveRecord::Base
	belongs_to :author

	# author # => Author.new
  # obj.author =
  # author_id
  # author_id=  	
  validates :title, presence: true,length: { minimum: 3 }
  validates :year, presence: true
  has_attached_file :cover, :styles => { :medium => "300x200>"}, :default_url => "/pictures/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
