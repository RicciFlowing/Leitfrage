class Idea < ActiveRecord::Base
  validates_presence_of :question
  validates_presence_of :explanation
end
