class Citizen < ActiveRecord::Base
  attr_accessible :name

  has_one :ssn
end
