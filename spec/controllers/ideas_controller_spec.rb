require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe IdeasController, type: :controller do

  let(:term){ term = Term.create()}

  # This should return the minimal set of attributes required to create a valid
  # Idea. As you add validations to Idea, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {question: "Was ist eine Kugel?", explanation: "Diese Frage ist Unsinn", term_id: term.id}
  }

  let(:invalid_attributes) {
    {question: nil, explanation: nil}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # IdeasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all ideas as @ideas" do
      idea = Idea.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:ideas)).to eq([idea])
    end
  end

  describe "GET #show" do
    it "assigns the requested idea as @idea" do
      idea = Idea.create! valid_attributes
      get :show, {:id => idea.to_param}, valid_session
      expect(assigns(:idea)).to eq(idea)
    end
  end

  describe "GET #new" do
    it "assigns a new idea as @idea" do
      get :new, {}, valid_session
      expect(assigns(:idea)).to be_a_new(Idea)
    end
  end

  describe "GET #edit" do
    it "assigns the requested idea as @idea" do
      idea = Idea.create! valid_attributes
      get :edit, {:id => idea.to_param}, valid_session
      expect(assigns(:idea)).to eq(idea)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Idea" do
        expect {
          post :create, {:idea => valid_attributes}, valid_session
        }.to change(Idea, :count).by(1)
      end

      it "assigns a newly created idea as @idea" do
        post :create, {:idea => valid_attributes}, valid_session
        expect(assigns(:idea)).to be_a(Idea)
        expect(assigns(:idea)).to be_persisted
      end

      it "redirects to the related term" do
        post :create, {:idea => valid_attributes}, valid_session
        expect(response).to redirect_to(Idea.last.term)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved idea as @idea" do
        post :create, {:idea => invalid_attributes}, valid_session
        expect(assigns(:idea)).to be_a_new(Idea)
      end

      it "re-renders the 'new' template" do
        post :create, {:idea => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {question:"Eine neue Frage", explanation: "Wirklich eine gute Frage, weil..."}
      }

      it "updates the requested idea" do
        idea = Idea.create! valid_attributes
        put :update, {:id => idea.to_param, :idea => new_attributes}, valid_session
        idea.reload
        expect(idea.question).to eq("Eine neue Frage");
      end

      it "assigns the requested idea as @idea" do
        idea = Idea.create! valid_attributes
        put :update, {:id => idea.to_param, :idea => valid_attributes}, valid_session
        expect(assigns(:idea)).to eq(idea)
      end

      it "redirects to the idea" do
        idea = Idea.create! valid_attributes
        put :update, {:id => idea.to_param, :idea => valid_attributes}, valid_session
        expect(response).to redirect_to(idea)
      end
    end

    context "with invalid params" do
      it "assigns the idea as @idea" do
        idea = Idea.create! valid_attributes
        put :update, {:id => idea.to_param, :idea => invalid_attributes}, valid_session
        expect(assigns(:idea)).to eq(idea)
      end

      it "re-renders the 'edit' template" do
        idea = Idea.create! valid_attributes
        put :update, {:id => idea.to_param, :idea => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested idea" do
      idea = Idea.create! valid_attributes
      expect {
        delete :destroy, {:id => idea.to_param}, valid_session
      }.to change(Idea, :count).by(-1)
    end

    it "redirects to the ideas list" do
      idea = Idea.create! valid_attributes
      delete :destroy, {:id => idea.to_param}, valid_session
      expect(response).to redirect_to(ideas_url)
    end
  end

end
