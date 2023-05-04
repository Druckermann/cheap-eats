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

ActiveRecord::Schema[7.0].define(version: 2023_04_29_074056) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "suburb"
    t.string "state"
    t.integer "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "price"
    t.string "description"
    t.binary "image"
    t.string "url"
    t.datetime "submission_date"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "business_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_deals_on_business_id"
    t.index ["user_id"], name: "index_deals_on_user_id"
  end

  create_table "recipe_deals", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "recipe_id", null: false
    t.bigint "deal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_recipe_deals_on_deal_id"
    t.index ["recipe_id"], name: "index_recipe_deals_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.binary "image"
    t.integer "servings"
    t.integer "cook_time"
    t.integer "prep_time"
    t.text "description"
    t.text "ingredients"
    t.text "steps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "deals", "businesses"
  add_foreign_key "deals", "users"
  add_foreign_key "recipe_deals", "deals"
  add_foreign_key "recipe_deals", "recipes"
end
