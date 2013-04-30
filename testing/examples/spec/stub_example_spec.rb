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

# senza stub

describe Person do
  context 'when persons have different parents' do
    let(:mother)       { Person.new('Jane', 'Smith') }
    let(:other_mother) { Person.new('Mark', 'Zuckerberg') }
    let(:other)        { Person.new('John', 'Doe', :mother => other_mother) }
    subject            { Person.new('Fred', 'Doe', :mother => mother) }

    it 'they are not siblings' do
      subject.should_not be_sibling(other)
    end
  end

  context 'when persons have same mother' do
    let(:mother)  { Person.new('Jane', 'Smith') }
    let(:brother) { Person.new('John', 'Doe', :mother => mother) }
    subject       { Person.new('Fred', 'Doe', :mother => mother) }

    it 'they are siblings' do
      subject.should be_sibling(brother)
    end
  end
end

# con stub

describe Person do
  context 'when persons have different parents' do
    let(:mother) { mock }
    let(:other)  { mock(:mother => mock) }
    subject      { Person.new('Bill', 'Gates', :mother => mother) }

    it 'they are not siblings' do
      subject.should_not be_sibling(other)
    end
  end

  context 'when persons have same mother' do
    let(:mother)  { stub }
    let(:brother) { stub(:mother => mother) }
    subject       { Person.new('Fred', 'Doe', :mother => mother) }

    it 'they are siblings' do
      subject.should be_sibling(brother)
    end
  end
end