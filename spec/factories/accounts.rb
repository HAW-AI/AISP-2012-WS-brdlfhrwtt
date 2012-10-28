# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    day_care_coupon false
    child
    net_income { Kernel.rand(1000..3000) }
    person_count { child_count + Kernel.rand(1..2) }
    child_count { Kernel.rand(1..3) }
    birth_sequence_position {|a| Kernel.rand(1..a.child_count) }
    free_preschool_year false
  end
end
