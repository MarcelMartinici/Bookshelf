class User < ActiveRecord::Base
  has_many :book
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  Role = ['admin', 'moderator']
  
  def is?(requested_role)
    self.role == requested_role
  end
end
