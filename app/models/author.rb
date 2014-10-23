class Author < ActiveRecord::Base
  belongs_to :books
  has_many :books
        validates :name, presence: true,
                length: { minimum: 5 }
end
