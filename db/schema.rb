# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_17_163420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_holes", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.integer "hole_number", null: false
    t.integer "yardage", null: false
    t.integer "par", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_holes_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name", null: false
    t.string "tees", null: false
    t.float "rating"
    t.integer "slope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holes", force: :cascade do |t|
    t.bigint "course_hole_id", null: false
    t.integer "score", null: false
    t.boolean "ipd", null: false
    t.boolean "gir", null: false
    t.boolean "fringe"
    t.integer "putt_one"
    t.integer "putt_two"
    t.integer "putt_three"
    t.integer "putt_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_hole_id"], name: "index_holes_on_course_hole_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.date "date", null: false
    t.bigint "course_id", null: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_rounds_on_course_id"
  end

  add_foreign_key "course_holes", "courses"
  add_foreign_key "holes", "course_holes"
  add_foreign_key "rounds", "courses"
end
