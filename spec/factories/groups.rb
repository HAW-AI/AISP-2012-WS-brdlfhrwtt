# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name { Faker::Product::brand }
    kindergarten
    limit { rand(1..40) }
    starts_on { Time.parse(['6:00', '6:30', '7:00', '8:00'].sample) }
    ends_on { starts_on + (Kernel.rand(5)+3).hours }

    ignore do child_count 1 end
    after(:create) do |group, evaluator|
      FactoryGirl.build_list(:child, evaluator.child_count, groups: [group])
    end
  end
end
