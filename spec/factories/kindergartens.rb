# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :kindergarten do
    name { Faker::Product::product_name }

    ignore do groups_count Kernel.rand(2..7) end
    after(:create) do |kindergarten, evaluator|
      FactoryGirl.create_list(:group, evaluator.groups_count, kindergarten: kindergarten)
    end
  end
end
