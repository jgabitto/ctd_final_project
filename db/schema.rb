# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_19_013630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_models", force: :cascade do |t|
    t.string "model_name"
    t.string "model_description"
    t.date "manufacture_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "license_plate"
    t.string "car_type"
    t.bigint "driver_id", null: false
    t.bigint "car_model_id", null: false
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_model_id"], name: "index_cars_on_car_model_id"
    t.index ["driver_id"], name: "index_cars_on_driver_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.boolean "working"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_drivers_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.point "latitude"
    t.point "longitude"
    t.string "location"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "credit_card_type"
    t.decimal "price", precision: 10, scale: 2
    t.string "billing_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ride_requests", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "driver_id", null: false
    t.time "request_start_time"
    t.time "ride_start_time"
    t.time "ride_end_time"
    t.point "gps_starting_point"
    t.point "gps_end_point"
    t.boolean "cancelled"
    t.bigint "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_ride_requests_on_customer_id"
    t.index ["driver_id"], name: "index_ride_requests_on_driver_id"
    t.index ["payment_id"], name: "index_ride_requests_on_payment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "phone"
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "drivers_license_number"
    t.date "expirty_date"
  end

  add_foreign_key "cars", "car_models"
  add_foreign_key "cars", "drivers"
  add_foreign_key "customers", "users"
  add_foreign_key "drivers", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "ride_requests", "customers"
  add_foreign_key "ride_requests", "drivers"
  add_foreign_key "ride_requests", "payments"
end
