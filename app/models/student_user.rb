class StudentUser < ActiveRecord::Base
  attr_accessible :email, :field, :firstname, :interests, :lastname, :mentor, :password, :studies_level
  belongs_to :MentorUser
end
