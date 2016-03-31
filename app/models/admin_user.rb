require 'bcrypt'

class AdminUser < ActiveRecord::Base
  validates :username, presence: true
  validates :password_digest, presence: true

  has_secure_password
end