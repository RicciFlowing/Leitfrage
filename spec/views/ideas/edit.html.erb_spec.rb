require 'rails_helper'

RSpec.describe "ideas/edit", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
      :question => "MyString",
      :explanation => "MyText"
    ))
  end

  it "renders the edit idea form" do
    render

    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do

      assert_select "input#idea_question[name=?]", "idea[question]"

      assert_select "textarea#idea_explanation[name=?]", "idea[explanation]"
    end
  end
end
