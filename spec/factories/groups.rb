# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name { Faker::Product::brand }
    kindergarten
    limit { rand(1..40) }

    ignore do child_count 1 end
    after(:create) do |group, evaluator|
      FactoryGirl.build_list(:child, evaluator.child_count, groups: [group])
    end
  end
end
