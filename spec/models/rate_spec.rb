require 'spec_helper'

describe Rate do
  it { should have_attribute :net_income }
  it { should have_attribute :two_people }
  it { should have_attribute :three_people }
  it { should have_attribute :four_people }
  it { should have_attribute :five_people }
  it { should have_attribute :six_people }
end
