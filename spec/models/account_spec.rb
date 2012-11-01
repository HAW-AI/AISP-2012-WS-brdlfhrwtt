require 'spec_helper'

describe Account do
  it { should have_attribute :day_care_coupon }
  it { should have_attribute :net_income }
  it { should have_attribute :person_count }
  it { should have_attribute :child_count }
  it { should have_attribute :birth_sequence_position }
  it { should have_attribute :free_preschool_year }
  it { should belong_to :child }

  it { should validate_presence_of(:child) }

  it { should allow_value(0).for(:net_income) }
  it { should allow_value(1000).for(:net_income) }
  it { should_not allow_value(-1).for(:net_income) }

  it { should allow_value(2).for(:person_count) }
  it { should allow_value(6).for(:person_count) }
  it { should_not allow_value(1).for(:person_count) }
  it { should_not allow_value(-1).for(:person_count) }

  it { should allow_value(1).for(:child_count) }
  it { should allow_value(6).for(:child_count) }
  it { should_not allow_value(0).for(:child_count) }
  it { should_not allow_value(-1).for(:child_count) }

  it { should allow_value(1).for(:birth_sequence_position) }
  it { should allow_value(10).for(:birth_sequence_position) }
  it { should_not allow_value(0).for(:birth_sequence_position) }
  it { should_not allow_value(-1).for(:birth_sequence_position) }
end
