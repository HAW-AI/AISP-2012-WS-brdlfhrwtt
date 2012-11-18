require 'spec_helper'

describe AppDomainConstraint do
  subject { AppDomainConstraint }
  describe "#match?" do 
    let(:request) { mock "Request" }

    ['www',''].each do |subdomain|
      it "should match '#{subdomain}'" do
        request.should_receive(:subdomain).and_return(subdomain)
        subject.matches?(request).should be_true
      end
    end

    ['admin',].each do |subdomain|
      it "should not match '#{subdomain}'" do
        request.should_receive(:subdomain).and_return(subdomain)
        subject.matches?(request).should_not be_true
      end
    end
  end
end
