class Country < ActiveRecord::Base
  attr_accessible :name

  has_many :cities
  has_many :streets, :through => :cities
end
