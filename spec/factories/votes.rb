FactoryGirl.define do
  factory :vote do
    association :user
    association :idea
  end

end
