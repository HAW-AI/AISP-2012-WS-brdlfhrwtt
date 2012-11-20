require 'spec_helper'

describe Waitlist do
  it { belong_to :child }
  it { belong_to :group }
  it { should have_attribute :position }

  it { should allow_value(1).for(:position) }
  it { should allow_value(15).for(:position) }
  it { should_not allow_value(0).for(:position) }
  it { should_not allow_value(-1).for(:position) }
  it { should_not allow_value(nil).for(:position) }
end
