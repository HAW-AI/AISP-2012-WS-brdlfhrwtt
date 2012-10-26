# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    day_care_coupon false
    child ""
    net_income 1
    person_count 1
    child_count 1
    birth_sequence_position ""
    free_preschool_year false
  end
end
