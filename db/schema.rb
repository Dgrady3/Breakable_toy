# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141006190354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorizations", force: true do |t|
    t.integer "workout_id",  null: false
    t.integer "category_id", null: false
  end

  create_table "category", force: true do |t|
    t.string "name", null: false
  end

  create_table "exercises", force: true do |t|
    t.string "name",        null: false
    t.string "description"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",             default: "",       null: false
    t.string   "last_name",              default: "",       null: false
    t.string   "email",                  default: "",       null: false
    t.string   "role",                   default: "member", null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workout_exercise_connector", force: true do |t|
    t.integer "exercise_id", null: false
    t.integer "sets",        null: false
    t.integer "reps",        null: false
    t.integer "rest_time"
  end

  create_table "workouts", force: true do |t|
    t.string "name", null: false
  end

end
