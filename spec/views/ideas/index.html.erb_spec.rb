require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :question => "Question1",
        :explanation => "MyText"
      ),
      Idea.create!(
        :question => "Question1",
        :explanation => "MyText"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "div", :text => "Question1".to_s, :count => 2
    assert_select "div", :text => "MyText".to_s, :count => 2
  end
end
