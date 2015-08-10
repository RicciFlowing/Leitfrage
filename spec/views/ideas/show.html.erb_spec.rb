require 'rails_helper'

RSpec.describe "ideas/show", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
      :question => "Question",
      :explanation => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question/)
    expect(rendered).to match(/MyText/)
  end
end
