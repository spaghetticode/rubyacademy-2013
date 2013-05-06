class Person < ActiveRecord::Base
  attr_accessible :name, :ssn

  validates :name, :presence => true

  validates :ssn, :uniqueness => true, :presence => true, :length => {:is => 5}, :format => /\d{2}\w{3}/
end
