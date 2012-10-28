# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :waitlist do
    group
    child
    position { rand(20) }
  end
end
