class Cathegory < ActiveRecord::Base
  has_many :book_cathegory
  has_many :book, :through => :book_cathegory 

  def self.create_from_name(name)
    split_name = name.split(",")
    split_name.map do |name|
      Cathegory.find_or_create_by(cathegory_name: name.to_s)
    end
  end

end
