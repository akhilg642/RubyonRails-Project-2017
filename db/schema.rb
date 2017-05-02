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

ActiveRecord::Schema.define(version: 20170430112313) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cleaners", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.string   "PhoneNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cleanlogs", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.string   "PhoneNo"
    t.string   "District"
    t.string   "City"
    t.string   "State"
    t.string   "Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line1_items", force: :cascade do |t|
    t.integer  "product1_id"
    t.integer  "cart_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "quantity",    default: 1
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product1s", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "student1s", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.string   "Password"
    t.string   "PhoneNo"
    t.string   "City"
    t.string   "State"
    t.string   "Country"
    t.string   "AadharNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student2s", force: :cascade do |t|
    t.string   "Service"
    t.string   "Price"
    t.date     "Date"
    t.time     "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student3s", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.string   "Password"
    t.string   "PhoneNo"
    t.string   "City"
    t.string   "State"
    t.string   "Country"
    t.string   "AadharNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student4s", force: :cascade do |t|
    t.string   "Service"
    t.string   "Price"
    t.date     "Date"
    t.time     "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student5s", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.text     "Password"
    t.string   "PhoneNo"
    t.string   "city"
    t.string   "State"
    t.string   "country"
    t.string   "AadharNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student6s", force: :cascade do |t|
    t.string   "Service"
    t.string   "Price"
    t.date     "Date"
    t.time     "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student7s", force: :cascade do |t|
    t.string   "PhoneNo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Emailid"
    t.string   "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
