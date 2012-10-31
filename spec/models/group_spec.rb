require 'spec_helper'

describe Group do
  it { should have_attribute :name }
  it { should have_attribute :limit }
  it { should have_attribute :starts_on }
  it { should have_attribute :ends_on }
  it { should have_many :children }
  it { should have_many :children_groups }
  it { should have_many :waiting_children }
  it { should have_many :waitlists }
  it { should belong_to :kindergarten }

  it { should allow_value("Pferdchen").for(:name) }
  it { should_not allow_value("").for(:name) }

  it { should allow_value(1).for(:limit) }
  it { should_not allow_value(0).for(:limit) }
  it { should_not allow_value(-1).for(:limit) }

  # ruby time includes date, sadly. comparing times from the db is safe, tough
  # because they will have the same dummy date (http://www.rebeccablyth.co.uk/2008/01/03/time-columns-and-rails/)
  describe "should be" do
    early_time = Time.parse("8:00")
    late_time = Time.parse("10:00")

    describe "valid when starts_on < ends_on" do
      subject { FactoryGirl.build(:group, { starts_on: early_time, ends_on: late_time } )}
      it { should have(0).error_on(:starts_on) }
      it { should have(0).error_on(:ends_on) }
    end

    context "invalid" do
      [["when starts_on > ends_on", late_time, early_time, false],
       ["when starts_on = ends_on", early_time, early_time, false]
      ].each do |description, starts_on, ends_on, res|
        context description do
          subject { FactoryGirl.build(:group, { starts_on: starts_on, ends_on: ends_on } )}
          before { subject.valid? }

          it { should have(1).error_on(:starts_on) }
          it { should have(1).error_on(:ends_on) }
        end
      end
    end
  end

end
