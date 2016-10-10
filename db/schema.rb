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

ActiveRecord::Schema.define(version: 20161010201146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adults", force: :cascade do |t|
    t.string   "forename"
    t.string   "surname"
    t.string   "occupation"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sex"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "student_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["student_id"], name: "index_comments_on_student_id", using: :btree
  end

  create_table "confessions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "short_name"
    t.string   "name"
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handicaps", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "total_amount"
    t.integer  "paid"
    t.date     "deadline"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["student_id"], name: "index_payments_on_student_id", using: :btree
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "school_year_id"
    t.integer  "group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["group_id"], name: "index_registrations_on_group_id", using: :btree
    t.index ["school_year_id"], name: "index_registrations_on_school_year_id", using: :btree
    t.index ["student_id"], name: "index_registrations_on_student_id", using: :btree
  end

  create_table "school_years", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_grades", force: :cascade do |t|
    t.integer  "grade_id"
    t.integer  "subject_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "registration_id"
    t.index ["grade_id"], name: "index_student_grades_on_grade_id", using: :btree
    t.index ["registration_id"], name: "index_student_grades_on_registration_id", using: :btree
    t.index ["subject_id"], name: "index_student_grades_on_subject_id", using: :btree
  end

  create_table "student_handicaps", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "handicap_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["handicap_id"], name: "index_student_handicaps_on_handicap_id", using: :btree
    t.index ["student_id"], name: "index_student_handicaps_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "forename"
    t.string   "surname"
    t.integer  "sex"
    t.date     "birth_date"
    t.string   "birth_place"
    t.integer  "confession_id"
    t.integer  "tribe_id"
    t.integer  "father_id"
    t.integer  "mother_id"
    t.integer  "guardian_id"
    t.string   "address"
    t.datetime "archived_at"
    t.string   "archiving_reason"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "birth_act_number"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["confession_id"], name: "index_students_on_confession_id", using: :btree
    t.index ["tribe_id"], name: "index_students_on_tribe_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tribes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "students"
  add_foreign_key "payments", "students"
  add_foreign_key "registrations", "groups"
  add_foreign_key "registrations", "school_years"
  add_foreign_key "registrations", "students"
  add_foreign_key "student_grades", "grades"
  add_foreign_key "student_grades", "registrations"
  add_foreign_key "student_grades", "subjects"
  add_foreign_key "student_handicaps", "handicaps"
  add_foreign_key "student_handicaps", "students"
  add_foreign_key "students", "adults", column: "father_id"
  add_foreign_key "students", "adults", column: "guardian_id"
  add_foreign_key "students", "adults", column: "mother_id"
  add_foreign_key "students", "confessions"
  add_foreign_key "students", "tribes"
end
