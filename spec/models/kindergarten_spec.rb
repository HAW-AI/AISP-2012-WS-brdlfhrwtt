require 'spec_helper'

describe Kindergarten do
  it { should have_attribute :name }
  it { should have_many :groups }
end
