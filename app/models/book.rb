class Book < ActiveRecord::Base
	belongs_to :author
  belongs_to :user
	# author # => Author.new
  # obj.author =
  # author_id
  # author_id=  	
  validates :title, presence: true,length: { minimum: 3 }
  validates :author_id, presence: true
  validates :year, presence: true,length: { maximum: 4 }
  has_attached_file :cover, :styles => { :medium => "640x480>"}, :default_url => "missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  def self.search(query)
    where("title like ?", "%#{query}%")
  end
end
