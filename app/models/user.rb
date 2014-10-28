class User < ActiveRecord::Base
  has_many :book
  ROLES = %i[:admin, :moderator, :guest]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
