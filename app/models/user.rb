class User < ApplicationRecord
  validates :username, presence: true, length: {in: 3..20}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
                  format: { with: VALID_EMAIL_REGEX},
                  uniqueness: true
  validates :password, presence: true, length: {minimum: 6} 
end
