class User < ActiveRecord::Base
  has_many :favorites
  has_many :shows, through: :favorites

  has_secure_password

  # need to include relationship for wishlist

  validates_presence_of :username, :first_name, :last_name, :password_digest
  validates_presence_of :email, :phone
  validates_uniqueness_of :username
  validates_length_of :password_digest, minimum: 6

end
