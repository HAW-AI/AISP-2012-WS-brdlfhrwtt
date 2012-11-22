require 'spec_helper'

describe State do
  it { should have_attribute(:name) }

  it { should have_many(:rates) }

  it { should allow_value("Hamburg").for(:name) }
  it { should_not allow_value("").for(:name) }
  it { should_not allow_value(nil).for(:name) }
end
