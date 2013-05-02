class Article < ActiveRecord::Base
  attr_accessible :title

  has_many :images, :as => :imageable
end
