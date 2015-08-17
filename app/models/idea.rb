class Idea < ActiveRecord::Base
  validates_presence_of :question
  validates_presence_of :explanation

  belongs_to :term
  belongs_to :user
  has_many   :votes
end
