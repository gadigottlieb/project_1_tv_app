class User < ActiveRecord::Base
  has_secure_password

  # need to include relationship for wishlist

  validates_presence_of :username, :first_name, :last_name, :password_digest
  validates_presence_of :email, :address, :phone
  validates_uniqueness_of :username
  validates_length_of :password_digest, minimum: 6

end
