require 'spec_helper'

describe Fee do
  it { should have_attribute :care_time }
  it { should have_attribute :valid_at }
  it { should have_attribute :max_age }
end
