require 'spec_helper'

describe Group do
  it { should have_attribute :name }
  it { should belong_to :kindergarten }
  it { should have_and_belong_to_many :children }
  it { should have_attribute :limit }
  it { should have_attribute :starts_on }
  it { should have_attribute :ends_on }
end
