# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do
    net_income { rand(1000..2000) }
    two_people { rand(20..40) }
    three_people { |r| Kernel.rand(5) + r.two_people }
    four_people { |r| Kernel.rand(5) + r.three_people }
    five_people { |r| Kernel.rand(5) + r.four_people }
    six_people { |r| Kernel.rand(5) + r.five_people }
  end
end
