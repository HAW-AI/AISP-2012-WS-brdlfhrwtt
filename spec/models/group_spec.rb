require 'spec_helper'

describe Group do
  it { should have_attribute :name }
  it { should have_attribute :limit }
  it { should have_attribute :starts_on }
  it { should have_attribute :ends_on }
  it { should have_many :children }
  it { should have_many :children_groups }
  it { should belong_to :kindergarten }
end
