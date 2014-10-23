class Book < ActiveRecord::Base
	belongs_to :author
	  validates :title, presence: true,
                length: { minimum: 3 }
      validates :author, presence: true,
                length: { minimum: 5 }
        validates :year, presence: true
end
