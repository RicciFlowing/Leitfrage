class VotesController < ApplicationController

def create
  vote = Vote.create(votes_params)
  redirect_to :back
end

private
  def votes_params
    params.permit(:idea_id, :user_id)
  end

end
