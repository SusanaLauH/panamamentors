class StudentUser < ActiveRecord::Base

  before_save { self.email = email.downcase }

  attr_accessible :email, :field, :firstname, :interests, :lastname, :mentor, :password, :studies_level
  belongs_to :MentorUser


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: {case_sensitive: false}
  validates :firstname, presence: true
  validates :lastname, presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :studies_level, presence: true



end
