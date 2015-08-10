require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :question => "Question",
        :explanation => "MyText"
      ),
      Idea.create!(
        :question => "Question",
        :explanation => "MyText"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
