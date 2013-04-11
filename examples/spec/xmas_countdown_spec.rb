require_relative '../xmas_countdown'

describe Countdown do
  it 'knows when is Christmas' do
    subject.xmas_day.should == '12-25'
  end

  describe '#next_xmas' do
    it { subject.next_xmas.should be_a Date }

    it 'is the next Christmas date' do
      subject.next_xmas.should == Date.parse("#{Date.today.year}-12-25")
    end
  end

  context 'when today is "2013-04-05"' do
    before do
      Date.stub(:today => Date.parse('2013-04-05'))
    end

    describe '#today' do
      it { subject.today.should be_a Date }

      it 'is today date' do
        subject.today.should == Date.parse('2013-04-05')
      end
    end
  end

  describe '#days_left' do
    context 'when the current year is 2013' do
      before { Date.stub(:year => 2013) }

      context 'when today is 2013-12-23' do
        before { Date.stub(:today => Date.parse('2013-12-23')) }

        it { subject.days_left.should == 2 }
      end

      context 'when today is 2013-12-10' do
        before { Date.stub(:today => Date.parse('2013-12-10')) }

        it { subject.days_left.should == 15 }
      end
    end
  end

  describe 'year' do
    it 'returns the current year' do
      subject.year.should == Date.today.year
    end
  end

  describe '#response' do
    it { subject.response.should be_a String }

    it 'should match expected text' do
      subject.response.should =~ /(\d+) days left to Christmas!$/
    end

    context 'when the current year is 2013 and today is 12-23' do
      before do
        Date.stub(
          :year  => 2013,
          :today => Date.parse('2013-12-23')
        )
      end

      it 'returns expected text with correct days count' do
        subject.response.should == '2 days left to Christmas!'
      end
    end
  end

  # TODO what happens if today is december 27th?
  context 'when today is december 27th' do
    pending
  end
end