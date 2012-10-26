require 'spec_helper'

describe Group do
  it { should have_attribute :name }
  it { should have_attribute :limit }
  it { should have_attribute :starts_on }
  it { should have_attribute :ends_on }
  it { should have_many :children }
  it { should have_many :children_groups }
  it { should have_many :waitlists }
  it { should belong_to :kindergarten }

  it { should allow_value("Pferdchen").for(:name) }
  it { should_not allow_value("").for(:name) }

  it { should allow_value(1).for(:limit) }
  it { should_not allow_value(0).for(:limit) }
  it { should_not allow_value(-1).for(:limit) }

  it "validates starts_on greater then ends_on (ruby time includes date, sadly)"


end
