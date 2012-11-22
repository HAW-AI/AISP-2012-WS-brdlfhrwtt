require 'spec_helper'

describe Fee do
  it { should have_attribute :care_time }
  it { should have_attribute :valid_at }
  it { should have_attribute :max_age }

  it { should have_many(:rates) }
  it { should belong_to :state }

  it { should allow_value(1).for(:care_time) }
  it { should_not allow_value(0).for(:care_time) }
  it { should_not allow_value(-1).for(:care_time) }

  it { should allow_value(1).for(:max_age) }
  it { should_not allow_value(0).for(:max_age) }
  it { should_not allow_value(-1).for(:max_age) }

  it "should include upper undefined price"
  it "should include lower undefined price"
end
