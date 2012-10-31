# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parent do
    name { Faker::Name.name }
  end
end
