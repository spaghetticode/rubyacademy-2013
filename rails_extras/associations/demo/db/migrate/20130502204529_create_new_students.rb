class CreateNewStudents < ActiveRecord::Migration
  def change
    create_table :new_students do |t|
      t.string :name

      t.timestamps
    end
  end
end
