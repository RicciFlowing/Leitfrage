class Vote < ActiveRecord::Base
  validates :idea, uniqueness: {scope: :user}
  belongs_to :user
  belongs_to :idea

  def self.has_voted?(user,idea)
    if self.where(user: user, idea: idea).count > 0
      return true
    else
      return false
    end
  end
end
