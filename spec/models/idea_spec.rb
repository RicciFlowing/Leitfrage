require 'rails_helper'

RSpec.describe Idea, type: :model do
  it  {should belong_to :term}
  it {should belong_to :user }
end
