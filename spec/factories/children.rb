# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :child do
    nick { Faker::Name.first_name }
    firstname { (0..rand(2)).inject(nick) {|a,e| "#{a} #{Faker::Name.first_name}" } }
    lastname { Faker::Name.last_name }
  end
end
