# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name "Pferdchen"
    kindergarten
    limit { rand(1..40) }
  end
end
