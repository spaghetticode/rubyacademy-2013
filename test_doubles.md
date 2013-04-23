# TEST DOUBLES

I test double sono oggetti creati ad hoc che vengono usati nei test come sostituti per gli oggetti originali. Esistono fondamentalmente due tipi di test double:

* stub
* mock



## STUB

Gli stub sono oggetti più semplici che rimpiazzano quelli originali, in modo da semplificare il setup dei test, rendere più veloce l'esecuzione della test suite e rendere più evidente il soggetto sotto test rispetto agli oggetti secondari.

```ruby
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
    let(:mother) { stub }
    let(:other)  { stub(:mother => stub) }
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

```



# MOCK

I mock invece sono soggetti di test sui quali vengono verificate delle aspettative, come ad esempio che vengano chiamati certi metodi su di essi.

```ruby
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

```




