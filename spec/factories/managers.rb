# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manager do
    name { Faker::NameDE.name }
    kindergarten
  end
end
