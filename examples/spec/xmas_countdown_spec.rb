require_relative '../xmas_countdown'

describe Countdown do
  it 'knows when is Christmas' do
    subject.xmas_day.should == '12-25'
  end

  describe '#next_xmas' do
    it { subject.next_xmas.should be_a Date }

    it 'is the next Christmas date' do
      subject.next_xmas.should == Date.parse('2013-12-25')
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
    pending do
      it 'returns 263' do
        subject.days_left.should == 263
      end
    end
  end

  describe 'year' do
    it 'returns the current year' do
      subject.year.should == Date.today.year
    end
  end
end