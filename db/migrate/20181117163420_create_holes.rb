class CreateHoles < ActiveRecord::Migration[5.2]
  def change
    create_table :holes do |t|
      t.references :course_hole, foreign_key: true, null: false
      t.integer :score, null: false
      t.boolean :ipd, null: false
      t.boolean :gir, null: false
      t.boolean :fringe
      t.integer :putt_one
      t.integer :putt_two
      t.integer :putt_three
      t.integer :putt_four

      t.timestamps
    end
  end
end
