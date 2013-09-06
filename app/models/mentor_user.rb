class MentorUser < ActiveRecord::Base
  attr_accessible :email, :field, :firstname, :interests, :lastname, :password, :studies_level

     has_many :StudentUser

end
