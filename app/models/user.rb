class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: {minimum: 8, maximum: 30}
end
