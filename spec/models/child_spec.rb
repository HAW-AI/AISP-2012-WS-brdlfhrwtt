require 'spec_helper'

describe Child do
  it { should have_attribute :nick }
  it { should have_attribute :firstname }
  it { should have_attribute :lastname }
  it { should have_attribute :gender }
  it { should have_attribute :disability }
  it { should have_attribute :born_at }
  it { should have_many :groups }
  it { should have_many :children_groups }
  it { should have_many :waitlists }
  it { should belong_to :parent }

  [:nick, :firstname, :lastname].each do |key|
    it { should allow_value("Peter").for(key) }
    it { should_not allow_value("").for(key) }
  end

  it "should validate :gender"
end
