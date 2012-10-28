require 'spec_helper'

describe 'validate FactoryGirl factories' do
  FactoryGirl.factories.map(&:name).each do |factory|
    context "with factory for :#{factory}" do
      subject { FactoryGirl.build(factory) }

      it "is valid" do
        subject.valid?.should be, subject.errors.full_messages
      end
    end
  end
end
