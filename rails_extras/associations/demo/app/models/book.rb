class Book < ActiveRecord::Base
  attr_accessible :author_id, :name

  belongs_to :author, :class_name => 'Writer'
end
