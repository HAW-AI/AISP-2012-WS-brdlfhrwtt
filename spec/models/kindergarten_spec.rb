require 'spec_helper'

describe Kindergarten do
  it { should have_attribute :name }
  it { should have_many :groups }

  it { should allow_value("Elfenwiese").for(:name) }
  it { should_not allow_value("").for(:name) }
end
