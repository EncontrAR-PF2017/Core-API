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

ActiveRecord::Schema.define(version: 20171026030521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.text     "title"
    t.integer  "notifications_sent"
    t.datetime "expire_date"
    t.integer  "campaign_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "zone_id"
    t.integer  "status",             default: 0
    t.index ["campaign_id"], name: "index_alerts_on_campaign_id", using: :btree
    t.index ["zone_id"], name: "index_alerts_on_zone_id", using: :btree
  end

  create_table "alerts_finders", force: :cascade do |t|
    t.integer  "alert_id"
    t.integer  "finder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_alerts_finders_on_alert_id", using: :btree
    t.index ["finder_id"], name: "index_alerts_finders_on_finder_id", using: :btree
  end

  create_table "campaign_images", force: :cascade do |t|
    t.integer  "campaign_id"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campaign_id"], name: "index_campaign_images_on_campaign_id", using: :btree
  end

  create_table "campaign_logs", force: :cascade do |t|
    t.integer  "campaign_id"
    t.text     "old_status"
    t.text     "new_status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campaign_id"], name: "index_campaign_logs_on_campaign_id", using: :btree
  end

  create_table "campaigns", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.datetime "expire_date"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "status",            default: 0
    t.integer  "missing_person_id"
    t.index ["missing_person_id"], name: "index_campaigns_on_missing_person_id", using: :btree
    t.index ["user_id"], name: "index_campaigns_on_user_id", using: :btree
  end

  create_table "chat_messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "campaign_id"
    t.integer  "finder_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["campaign_id"], name: "index_conversations_on_campaign_id", using: :btree
    t.index ["finder_id"], name: "index_conversations_on_finder_id", using: :btree
  end

  create_table "finders", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "lastname"
    t.text     "device_id"
    t.text     "os"
    t.text     "alert_type"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.json     "device_tokens", default: {}
    t.string   "auth_token"
    t.string   "dni"
    t.index ["device_id"], name: "index_finders_on_device_id", unique: true, using: :btree
    t.index ["email"], name: "index_finders_on_email", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "conversation_id"
    t.string   "content"
    t.string   "sender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  end

  create_table "missing_people", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "dni"
    t.integer  "age"
    t.string   "photo"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "gender"
    t.float    "last_known_loc_lat",  default: 0.0
    t.float    "last_known_loc_long", default: 0.0
  end

  create_table "privileges", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privileges_roles", id: false, force: :cascade do |t|
    t.integer "role_id",      null: false
    t.integer "privilege_id", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "lastname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "password_hash"
    t.string   "auth_token"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "zones", force: :cascade do |t|
    t.string   "label"
    t.float    "south_west_lat"
    t.float    "south_west_long"
    t.float    "north_east_lat"
    t.float    "north_east_long"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "alerts", "campaigns"
  add_foreign_key "campaign_images", "campaigns"
  add_foreign_key "campaigns", "users"
end
