# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fee do
    care_time { [5,8,40].sample }
    valid_at { DateTime.now.beginning_of_year }
    max_age { [3,6,14].sample }
  end
end
