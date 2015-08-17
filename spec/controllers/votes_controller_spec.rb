require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  let(:idea){FactoryGirl.create(:idea)}
  let(:valid_attributes) {
    {user_id: idea.user.id, idea_id: idea.id}
  }

  let(:invalid_attributes) {
    {user_id: nil, idea_id: nil}
  }

  describe "Post create" do
    context "with valid_params" do
      it "creates a new idea" do
        request.env["HTTP_REFERER"] = "/"
        expect {
          post :create, {:vote => valid_attributes}
        }.to change(Vote, :count).by(1)
      end
    end
  end
end
