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

ActiveRecord::Schema.define(version: 2022_03_01_163750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "city_halls", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containers", force: :cascade do |t|
    t.integer "temperature"
    t.integer "filling_level"
    t.string "location"
    t.boolean "broken"
    t.bigint "city_hall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["city_hall_id"], name: "index_containers_on_city_hall_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "road_containers", force: :cascade do |t|
    t.boolean "collected"
    t.bigint "container_id", null: false
    t.bigint "road_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["container_id"], name: "index_road_containers_on_container_id"
    t.index ["road_id"], name: "index_road_containers_on_road_id"
  end

  create_table "roads", force: :cascade do |t|
    t.datetime "date"
    t.integer "kilometers"
    t.bigint "user_id", null: false
    t.bigint "truck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["truck_id"], name: "index_roads_on_truck_id"
    t.index ["user_id"], name: "index_roads_on_user_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.integer "kilometers"
    t.float "consumption"
    t.string "plate_number"
    t.bigint "city_hall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_hall_id"], name: "index_trucks_on_city_hall_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "employee_category"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.bigint "city_hall_id"
    t.string "employee_id"
    t.boolean "admin"
    t.string "nickname"
    t.index ["city_hall_id"], name: "index_users_on_city_hall_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "containers", "city_halls"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "road_containers", "containers"
  add_foreign_key "road_containers", "roads"
  add_foreign_key "roads", "trucks"
  add_foreign_key "roads", "users"
  add_foreign_key "trucks", "city_halls"
  add_foreign_key "users", "city_halls"
end
