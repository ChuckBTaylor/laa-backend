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

ActiveRecord::Schema.define(version: 20180120223345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "number"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_districts_on_state_id"
  end

  create_table "reps", force: :cascade do |t|
    t.string "name"
    t.bigint "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "party"
    t.string "member_id"
    t.index ["district_id"], name: "index_reps_on_district_id"
  end

  create_table "rolls", force: :cascade do |t|
    t.string "cuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "senators", force: :cascade do |t|
    t.bigint "state_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "party"
    t.string "member_id"
    t.index ["state_id"], name: "index_senators_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "district_id"
    t.integer "state_id"
  end

  add_foreign_key "districts", "states"
  add_foreign_key "reps", "districts"
  add_foreign_key "senators", "states"
end
