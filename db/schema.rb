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

ActiveRecord::Schema.define(version: 2019_01_07_221543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announce_messages", force: :cascade do |t|
    t.string "message"
    t.bigint "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_announce_messages_on_device_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "moisture_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "uuid"
    t.bigint "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_devices_on_garden_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moisture_levels", force: :cascade do |t|
    t.integer "reading"
    t.bigint "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_moisture_levels_on_device_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.bigint "garden_id"
    t.bigint "device_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_plants_on_category_id"
    t.index ["device_id"], name: "index_plants_on_device_id"
    t.index ["garden_id"], name: "index_plants_on_garden_id"
  end

  add_foreign_key "announce_messages", "devices"
  add_foreign_key "devices", "gardens"
  add_foreign_key "moisture_levels", "devices"
  add_foreign_key "plants", "categories"
  add_foreign_key "plants", "devices"
  add_foreign_key "plants", "gardens"
end
