class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.string :name
      t.integer :city_id
      t.timestamps
    end
  end
end
