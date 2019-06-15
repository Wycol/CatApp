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

ActiveRecord::Schema.define(version: 2019_06_14_175601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "form_fields", force: :cascade do |t|
    t.bigint "resource_id"
    t.string "value"
    t.string "label"
    t.integer "input_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "size"
    t.index ["resource_id"], name: "index_form_fields_on_resource_id"
  end

  create_table "missing_people", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "lastname"
    t.integer "age"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.float "height"
    t.float "weight"
    t.integer "eye"
    t.integer "race"
    t.integer "hair"
    t.integer "hair_color"
    t.integer "complexion"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "localization"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_resources", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "tipo", default: 0
    t.boolean "active", default: false
    t.integer "age"
    t.integer "perfil"
    t.string "dni"
    t.string "phone"
    t.string "auth_token"
  end

end
