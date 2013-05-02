class CreateSsns < ActiveRecord::Migration
  def change
    create_table :ssns do |t|
      t.string :code
      t.integer :citizen_id
      t.timestamps
    end
  end
end
