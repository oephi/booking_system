class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :rooms, index: true
      t.string :name
      t.string :rooms
      t.string :availability

      t.timestamps
    end
  end
end
