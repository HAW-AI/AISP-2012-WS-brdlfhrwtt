require 'spec_helper'

describe Waitlist do
  it { belong_to :child }
  it { belong_to :group }
  it { should have_attribute :position }
end
