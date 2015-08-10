require 'rails_helper'

RSpec.describe Term, type: :model do
  it {should have_many(:ideas)}
end
