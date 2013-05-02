class Street < ActiveRecord::Base
  attr_accessible :name, :city_id, :city

  belongs_to :city
end
