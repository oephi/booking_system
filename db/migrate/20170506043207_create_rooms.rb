class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :beds
      t.string :availability
      t.string :tenant
      t.text :description
      t.string :availability
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
