class Date
  def self.today
    Date.parse('2014-04-06')
  end
end

class Countdown
  def xmas_day
    '12-25'
  end

  def next_xmas
    Date.parse('2013-12-25')
  end

  def today
    Date.today
  end

  def days_left
    (next_xmas - today).to_i
  end

  def year
    Date.today.year
  end
end