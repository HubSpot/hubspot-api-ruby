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

ActiveRecord::Schema.define(version: 2020_01_30_113853) do

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "event_type"
    t.integer "object_id"
    t.string "event_id"
    t.string "occured_at"
    t.string "property_name"
    t.string "property_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "refresh_token"
    t.string "access_token"
    t.datetime "expires_in"
    t.datetime "expires_at"
  end

end
