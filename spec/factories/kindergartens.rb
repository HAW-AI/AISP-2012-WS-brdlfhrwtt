# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :kindergarten do
    name { Faker::Education::school_name }

    ignore do groups_count 7 end
    after(:create) do |kindergarten, evaluator|
      FactoryGirl.create_list(:group, evaluator.groups_count, kindergarten: kindergarten)
    end
  end
end
