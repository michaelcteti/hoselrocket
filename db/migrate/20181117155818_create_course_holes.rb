class CreateCourseHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :course_holes do |t|
      t.references :course, foreign_key: true, null: false
      t.integer :hole_number, null: false
      t.integer :yardage, null: false
      t.integer :par, null: false

      t.timestamps
    end
  end
end
