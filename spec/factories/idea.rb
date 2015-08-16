FactoryGirl.define do
  factory :idea do
    sequence(:question)  {|i| "Testquestion # #{i}"}
    explanation "This is a explanation"
    association :user
  end
end
