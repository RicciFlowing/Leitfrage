require 'rails_helper'

RSpec.describe "ideas/new", type: :view do
  before(:each) do
    assign(:idea, Idea.new(
      :question => "MyString",
      :explanation => "MyText"
    ))
  end

  it "renders new idea form" do
    render

    assert_select "form[action=?][method=?]", ideas_path, "post" do

      assert_select "input#idea_question[name=?]", "idea[question]"

      assert_select "textarea#idea_explanation[name=?]", "idea[explanation]"
    end
  end
end
