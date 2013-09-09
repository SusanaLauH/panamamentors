class StudentUser < ActiveRecord::Base
  #Include default devise modules. Others available are:
   #:token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :confirmable,
        :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  before_save { self.email = email.downcase }
  before_create :create_remember_token

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


 def StudentUser.new_remember_token
  SecureRandom.urlsafe_base64
end

def StudentUser.encrypt(token)
  Digest::SHA1.hexdigest(token.to_s)
end

private

def create_remember_token
  self.remember_token = StudentUser.encrypt(StudentUser.new_remember_token)
end

end
