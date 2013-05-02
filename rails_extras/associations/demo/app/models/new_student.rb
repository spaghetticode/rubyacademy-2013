class NewStudent < ActiveRecord::Base
  attr_accessible :name

  has_many :grades
  has_many :new_subjects, :through => :grades

  # has_many :subjects, :class_name => 'NewSubject', :through => :grades
end
