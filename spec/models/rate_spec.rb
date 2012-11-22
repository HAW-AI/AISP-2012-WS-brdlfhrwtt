require 'spec_helper'

describe Rate do
  it { should have_attribute :net_income }
  it { should have_attribute :two_people }
  it { should have_attribute :three_people }
  it { should have_attribute :four_people }
  it { should have_attribute :five_people }
  it { should have_attribute :six_people }

  it { should belong_to :state }

  it { should allow_value(0).for(:net_income) }
  it { should allow_value(1000).for(:net_income) }
  it { should_not allow_value(-1).for(:net_income) }
end
