class Evaluation < ActiveRecord::Base
  attr_accessible :evaluated, :evaluation, :mentor
  belongs_to :mentor_user
end
