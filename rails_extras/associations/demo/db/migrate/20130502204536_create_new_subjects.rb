class CreateNewSubjects < ActiveRecord::Migration
  def change
    create_table :new_subjects do |t|
      t.string :name

      t.timestamps
    end
  end
end
