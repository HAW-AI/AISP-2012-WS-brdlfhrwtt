require 'spec_helper'

describe Child do
  it { should have_attribute :nick }
  it { should have_and_belong_to_many :groups }
  it { should have_attribute :firstname }
  it { should have_attribute :lastname }
  it { should have_attribute :gender }
  it { should have_attribute :disability }
  it { should have_attribute :born_at }
end
