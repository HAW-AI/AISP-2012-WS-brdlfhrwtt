require 'spec_helper'

describe Account do
  it { should have_attribute :day_care_coupon }
  it { should have_attribute :net_income }
  it { should have_attribute :person_count }
  it { should have_attribute :child_count }
  it { should have_attribute :birth_sequence_position }
  it { should have_attribute :free_preschool_year }
  it { should belong_to :child }
end
