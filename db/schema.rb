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

ActiveRecord::Schema.define(version: 2022_11_28_170403) do

  # These are extensions that must be enabled in order to support this database
  # enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer "day_of_week"
    t.string "start"
    t.string "end"
    t.boolean "is_available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "package_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "package_availabilities", force: :cascade do |t|
    t.integer "availability_id"
    t.integer "package_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.integer "number_of_meetings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birthdate"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.boolean "is_admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
