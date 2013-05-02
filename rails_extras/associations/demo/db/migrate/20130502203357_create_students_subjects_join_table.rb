class CreateStudentsSubjectsJoinTable < ActiveRecord::Migration
  def up
    create_table :students_subjects do |t|
      t.integer :student_id
      t.integer :subject_id
    end
  end

  def down
  end
end
