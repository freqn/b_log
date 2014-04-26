class User < ActiveRecord::Base
  has_secure_password
  validates :password, :username, :presence => true
end
