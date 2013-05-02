class NewSubject < ActiveRecord::Base
  attr_accessible :name

  has_many :grades
  has_many :new_students, :through => :grades

  # has_many :students, :class_name => 'Student', :through => :grades
end
