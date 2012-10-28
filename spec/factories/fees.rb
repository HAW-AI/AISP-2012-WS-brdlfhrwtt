# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fee do
    care_time { [5,8,40].sample }
    valid_at { DateTime.now.beginning_of_year }
    max_age { [3,6,14].sample }

    ignore do rate_count 30 end
    after(:build) do |fee, evaluator|
      base = 23
      (0..evaluator.rate_count).each do |i|
        net = 1000 + 23*i
        fee.rates << FactoryGirl.create(:rate, {
          net_income: net,
          two_people: 0.023*net,
          three_people: 0.033*net,
          four_people: 0.043*net,
          five_people: 0.053*net,
          six_people: 0.063*net
        })
      end
    end
  end
end
