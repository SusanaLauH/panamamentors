class MentorUser < ActiveRecord::Base

  before_save { self.email = email.downcase }


  attr_accessible :email, :field, :firstname, :interests, :lastname, :password, :studies_level

     has_many :StudentUser

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}
  validates :firstname, presence: true
  validates :lastname, presence: true

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :studies_level, presence: true
end
