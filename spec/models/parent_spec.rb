require 'spec_helper'

describe Parent do
  it { should have_attribute :name }
  it { should have_many :children }
end
