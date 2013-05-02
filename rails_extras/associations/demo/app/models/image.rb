class Image < ActiveRecord::Base
  attr_accessible :path, :imageable

  belongs_to :imageable, :polymorphic => true
end
