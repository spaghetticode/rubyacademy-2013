require 'rspec'

class Person
  attr_reader :name, :surname, :mother, :father

  def initialize(name, surname, opts={})
    @name, @surname = name, surname
    @mother = opts[:mother]
  end

  def sibling?(other)
    if mother
      mother == other.mother
    else
      false
    end
  end
end

describe Person do
  describe '#siblings?' do
    let(:mother) { stub }
    let(:other)  { mock }
    subject      { Person.new('John', 'Doe') }

    it 'checks that persons have the same mother' do
      other.should_receive(:mother).and_return(mock)
      subject.should_receive(:mother).twice.and_return(mock)
      subject.sibling?(other)
    end
  end
end