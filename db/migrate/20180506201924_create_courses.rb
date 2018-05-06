class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :tees, null: false
      t.float :rating
      t.integer :slope

      t.timestamps
    end
  end
end
