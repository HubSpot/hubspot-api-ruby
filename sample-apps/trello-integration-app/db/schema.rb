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

ActiveRecord::Schema.define(version: 2020_07_27_083656) do

  create_table "deal_associations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "deal_id"
    t.string "card_id"
  end

  create_table "extension_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "card_id_key"
    t.string "card_id"
  end

  create_table "hubspot_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "refresh_token"
    t.string "access_token"
    t.datetime "expires_in"
    t.datetime "expires_at"
  end

  create_table "mappings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "board_id"
    t.string "board_list_id"
    t.string "pipeline_id"
    t.string "pipeline_stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trello_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "token"
    t.string "secret"
  end

  create_table "webhooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "webhook_id"
    t.string "card_id"
    t.string "url"
  end

end
