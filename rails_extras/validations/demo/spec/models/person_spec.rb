require 'spec_helper'

describe Person do
  it { Person.new.should have(1).error_on(:name) }

  it { Person.new(:name => 'asd').should have(0).errors_on(:name) }

  it { Person.new(:name => '').should have(1).error_on(:name) }

  it {Person.new(:ssn => '123').should have_at_least(1).error_on(:ssn) }
  it {Person.new(:ssn => '12aaa').should have(0).errors_on(:ssn) }
end
