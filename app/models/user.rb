class User < ApplicationRecord
  has_secure_password
  has_many :hikes
  validates :email, presence: true, uniqueness: true
end
