class User < ApplicationRecord
  validates :username, length: { maximum: 45 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 120 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_PASSWORD = /\A(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z]).{6,}/
  validates :password, presence: true, length: { minimum: 6 }, format: { with: VALID_PASSWORD}
end
