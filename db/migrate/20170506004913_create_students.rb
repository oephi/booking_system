class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :concession
      t.string :name
      t.string :email
      t.string :cabin
      t.string :paid

      t.timestamps
    end
  end
end
