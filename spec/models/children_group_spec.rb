require 'spec_helper'

describe ChildrenGroup do
  it { belong_to :child }
  it { belong_to :group }
end
