require_relative '../xmas_countdown'

describe Countdown do
  it 'knows when is Christmas' do
    subject.xmas_day.should == '12-25'
  end
end