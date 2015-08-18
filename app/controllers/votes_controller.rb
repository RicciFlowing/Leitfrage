class VotesController < ApplicationController

before_action :set_vote, only: :destroy

def create
  vote = Vote.create(votes_params)
  redirect_to :back
end

def destroy
  @vote.destroy
  redirect_to :back
end

private
  def votes_params
    params.permit(:idea_id, :user_id)
  end

  def set_vote
    @vote = Vote.find(params[:id])
  end

end
