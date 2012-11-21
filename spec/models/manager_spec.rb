require 'spec_helper'

describe Manager do
  it { should have_attribute(:name) }
  it { should belong_to(:kindergarten) }

  it { should allow_value("Hans Peter").for(:name) }
  it { should_not allow_value("").for(:name) }
end
