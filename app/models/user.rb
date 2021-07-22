class User < ApplicationRecord

  has_many :posts

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 4..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..16, :on => :create
end
