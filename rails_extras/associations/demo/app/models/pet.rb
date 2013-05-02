class Pet < ActiveRecord::Base
  attr_accessible :name, :person_id

  belongs_to :person
end
