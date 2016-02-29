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

ActiveRecord::Schema.define(version: 20160229151433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "depression_questions", force: :cascade do |t|
    t.integer  "q_one"
    t.integer  "q_two"
    t.integer  "q_three"
    t.integer  "q_four"
    t.integer  "q_five"
    t.integer  "q_six"
    t.integer  "q_seven"
    t.integer  "q_eight"
    t.integer  "q_nine"
    t.integer  "q_ten"
    t.integer  "q_eleven"
    t.integer  "q_twelve"
    t.integer  "q_thirteen"
    t.integer  "q_fourteen"
    t.integer  "q_fifteen"
    t.integer  "q_sixteen"
    t.integer  "q_seventeen"
    t.integer  "q_eighteen"
    t.integer  "q_nineteen"
    t.integer  "q_twenty"
    t.integer  "q_twenty_one"
    t.integer  "total_points"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
