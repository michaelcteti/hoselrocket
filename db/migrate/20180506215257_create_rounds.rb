class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.date :date, null: false
      t.references :course, foreign_key: true, null: false
      t.text :notes

      t.timestamps
    end
  end
end
