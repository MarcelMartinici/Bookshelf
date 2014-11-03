class BookCathegory < ActiveRecord::Base
  belongs_to :cathegory
  belongs_to :book
end
