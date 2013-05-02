class Ssn < ActiveRecord::Base
  attr_accessible :code

  belongs_to :citizen
end
