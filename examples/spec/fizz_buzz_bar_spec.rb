class FizzBuzz

  CONFIG = { 3 => "Fizz", 5 => "Buzz", 7 => "Bar" }

  attr_reader :number
  attr_accessor :string

  def initialize number
    @number = number
    @string = ""
  end

  def self.run
    1.upto(100) do |n|
      puts new(n).fizz_buzz
    end
  end

  def fizz_buzz
    CONFIG.each_pair do |quotient, word|
      add_word_for_quotient word, quotient
    end
    string.size == 0 ? number : string
  end

  private

  def divisible_by? quotient
    number % quotient == 0
  end

  def add_word_for_quotient word, quotient
    self.string += word if divisible_by? quotient
  end

end

describe FizzBuzz do

  it "knows when a number is divisible by another number" do
    FizzBuzz.new(6).should be_divisible_by(3)
    FizzBuzz.new(6).send(:divisible_by?, 3).should be_true
  end

  it "should return the same input" do
    FizzBuzz.new(1).fizz_buzz.should ==  1
  end

  it "returns Fizz when the number can be divided by 3" do
    FizzBuzz.new(3).fizz_buzz.should == "Fizz"
  end

  it "returns Bar when the number can be divided by 7" do
    FizzBuzz.new(7).fizz_buzz.should == "Bar"
  end

  it "returns Buzz when the number can be divided by 5" do
    FizzBuzz.new(5).fizz_buzz.should == "Buzz"
  end

  it "returns FizzBar when the number can be divided both by 7 and 3" do
    FizzBuzz.new(21).fizz_buzz.should == "FizzBar"
  end

  it "returns FizzBuzz when the number can be divided both by 5 and 3" do
    FizzBuzz.new(15).fizz_buzz.should == "FizzBuzz"
  end

  it "returns BuzzBar when the number can be divided both by 5 and 7" do
    FizzBuzz.new(35).fizz_buzz.should == "BuzzBar"
  end

  it "returns FizzBuzzBar when the number can be divided by 3, 5 and 7" do
    FizzBuzz.new(105).fizz_buzz.should == "FizzBuzzBar"
  end

  it "runs", :prints_output => true do
    FizzBuzz.run
  end

end