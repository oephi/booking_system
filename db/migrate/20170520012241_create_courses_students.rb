class CreateCoursesStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_students do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
