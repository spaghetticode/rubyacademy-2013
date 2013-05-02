class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :new_student_id
      t.integer :new_subject_id
      t.string :value
      t.timestamps
    end
  end
end
