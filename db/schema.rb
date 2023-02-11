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

ActiveRecord::Schema.define(version: 2023_02_11_085100) do

  create_table "bills", force: :cascade do |t|
    t.integer "status"
    t.string "note"
    t.integer "total"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "quality"
    t.integer "user_id"
    t.integer "stock_id"
    t.integer "bill_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bill_id"], name: "index_items_on_bill_id"
    t.index ["stock_id"], name: "index_items_on_stock_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "category"
    t.text "desciption"
    t.integer "price"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "size"
    t.integer "quality"
    t.integer "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "phone"
    t.string "address"
    t.integer "expensed_money"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "users"
  add_foreign_key "stocks", "products"
end
