class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :firstname, presence: true, length: { maximum: 50, minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :username, presence: true, length: { maximum: 50, minimum: 3 }
  validates :password, presence: true, length: { minimum: 5 }
  has_secure_password
end
