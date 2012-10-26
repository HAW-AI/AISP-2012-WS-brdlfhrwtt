require 'spec_helper'

describe Parent do
  it { should have_attribute :name }
  it { should have_many :children }

  it { should allow_value("Peters").for(:name) }
  it { should_not allow_value("").for(:name) }
end
