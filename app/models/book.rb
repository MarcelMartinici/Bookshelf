class Book < ActiveRecord::Base
	belongs_to :author
  belongs_to :user 	
  has_many :book_cathegory
  has_many :cathegory, :through => :book_cathegory 
  ratyrate_rateable 'book_rating'
  validates :title, presence: true,length: { minimum: 3 }
  validates :year, presence: true,length: { maximum: 4 }
  has_attached_file :cover, :styles => { :medium => "640x480>"}, :default_url => "missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
 
  scope :search, -> term {
    if term.present?
      where('title ILIKE :term OR authors.name ILIKE :term', term: "%#{term}%").
      eager_load(:author)
    end
  }  

end
