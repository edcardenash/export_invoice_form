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

ActiveRecord::Schema[7.0].define(version: 2023_10_21_020706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string "container_number"
    t.integer "packing"
    t.decimal "total_gross_weight"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_containers_on_invoice_id"
  end

  create_table "export_companies", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.string "our_ref"
    t.string "currency"
    t.string "payment_terms"
    t.string "bank_details"
    t.string "icoterms"
    t.bigint "company_id", null: false
    t.bigint "export_company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_invoices_on_company_id"
    t.index ["export_company_id"], name: "index_invoices_on_export_company_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "container_id", null: false
    t.string "material_type"
    t.string "product_code"
    t.integer "quantity"
    t.decimal "unit_weight"
    t.integer "total_packages"
    t.decimal "unit_value"
    t.decimal "total_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["container_id"], name: "index_products_on_container_id"
  end

  add_foreign_key "containers", "invoices"
  add_foreign_key "invoices", "companies"
  add_foreign_key "invoices", "export_companies"
  add_foreign_key "products", "containers"
end
