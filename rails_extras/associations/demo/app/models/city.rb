class City < ActiveRecord::Base
  attr_accessible :country_id, :country, :name

  belongs_to :country
  has_many :streets
end
