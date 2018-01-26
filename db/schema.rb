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

ActiveRecord::Schema.define(version: 20180126014314) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "instructor"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_students", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_students_on_course_id"
    t.index ["student_id"], name: "index_courses_students_on_student_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "rooms"
    t.string   "name"
    t.string   "availability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["rooms"], name: "index_locations_on_rooms"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "beds"
    t.string   "availability"
    t.string   "tenant"
    t.text     "description"
    t.integer  "location_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["location_id"], name: "index_rooms_on_location_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "concession"
    t.string   "name"
    t.string   "email"
    t.string   "cabin"
    t.string   "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
