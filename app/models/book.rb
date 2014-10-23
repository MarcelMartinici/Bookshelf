class Book < ActiveRecord::Base
	  validates :title, presence: true,
                length: { minimum: 3 }
      validates :author, presence: true,
                length: { minimum: 5 }
        validates :year, presence: true
end
