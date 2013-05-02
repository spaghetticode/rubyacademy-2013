class Grade < ActiveRecord::Base
  attr_accessible :new_student_id, :new_subject_id, :new_student, :new_subject, :value

  belongs_to :new_student
  belongs_to :new_subject

  # belongs_to :student, :foreign_key => :new_student_id, :class_name => 'NewStudent'
  # belongs_to :subject, :foreign_key => :new_subject_id, :class_name => 'NewSubject'
end
