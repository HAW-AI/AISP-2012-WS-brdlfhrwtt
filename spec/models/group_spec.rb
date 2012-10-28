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

  # ruby time includes date, sadly. comparing times from the db is safe, tough
  # because they will have the same dummy date (http://www.rebeccablyth.co.uk/2008/01/03/time-columns-and-rails/)
  describe "starts_on should be greater then ends_on" do
    early_time = Time.new(2012, 1, 1, 8)
    late_time = Time.new(2012, 1, 1, 10)

    [["with starts_on < ends_on", early_time, late_time, true],
     ["with starts_on > ends_on", late_time, early_time, false],
     ["with starts_on = ends_on", early_time, early_time, false]
    ].each do |test|
      descr, starts_on, ends_on, res = test

      describe descr do
        group = Group.new
        group.starts_on = starts_on
        group.ends_on = ends_on

        group.valid?

        specify { group.errors[:starts_on].blank?.should == res }
        specify { group.errors[:ends_on].blank?.should == res }
      end
    end
  end

end
