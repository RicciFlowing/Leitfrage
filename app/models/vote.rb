class Vote < ActiveRecord::Base
  validates :idea, uniqueness: {scope: :user}
  belongs_to :user
  belongs_to :idea
end
