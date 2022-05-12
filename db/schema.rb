# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_11_214242) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "address_type"
    t.text "line_1"
    t.text "line_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "castordians", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.integer "role"
    t.time "duty_time"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_castordians_on_staff_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.string "grade"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "section"
    t.boolean "status"
    t.text "remarks"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_classrooms_on_teacher_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "contact_type"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "parents", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "contact_id", null: false
    t.bigint "address_id", null: false
    t.string "ocupation"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_parents_on_address_id"
    t.index ["contact_id"], name: "index_parents_on_contact_id"
    t.index ["user_id"], name: "index_parents_on_user_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "contact_id", null: false
    t.bigint "address_id", null: false
    t.integer "staff_type"
    t.integer "salary"
    t.integer "identity_card_number"
    t.string "father_name"
    t.string "place_of_birth"
    t.date "date_of_hiring"
    t.integer "year_of_service"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_staffs_on_address_id"
    t.index ["contact_id"], name: "index_staffs_on_contact_id"
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "parent_id", null: false
    t.bigint "classroom_id", null: false
    t.boolean "status"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["parent_id"], name: "index_students_on_parent_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.time "duty_time_start"
    t.time "duty_time_end"
    t.string "speciality"
    t.string "education_degree"
    t.integer "expirence_in_years"
    t.string "hire_by"
    t.json "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_teachers_on_staff_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.date "date_of_birth"
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "castordians", "staffs"
  add_foreign_key "classrooms", "teachers"
  add_foreign_key "contacts", "users"
  add_foreign_key "parents", "addresses"
  add_foreign_key "parents", "contacts"
  add_foreign_key "parents", "users"
  add_foreign_key "staffs", "addresses"
  add_foreign_key "staffs", "contacts"
  add_foreign_key "staffs", "users"
  add_foreign_key "students", "classrooms"
  add_foreign_key "students", "parents"
  add_foreign_key "students", "users"
  add_foreign_key "teachers", "staffs"
end
