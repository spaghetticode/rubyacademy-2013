class Writer < ActiveRecord::Base
  attr_accessible :name

  has_many :novels, :class_name => 'Book', :foreign_key => :author_id
end
