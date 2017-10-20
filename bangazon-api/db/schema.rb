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

ActiveRecord::Schema.define(version: 20171020205346) do

  create_table "computers", force: :cascade do |t|
    t.date "decommission_date"
    t.date "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "stale"
    t.date "last_date_active"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.float "expense_budget"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_computers", force: :cascade do |t|
    t.integer "computer_id"
    t.integer "employee_id"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_employee_computers_on_computer_id"
    t.index ["employee_id"], name: "index_employee_computers_on_employee_id"
  end

  create_table "employee_programs", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_programs_on_employee_id"
    t.index ["program_id"], name: "index_employee_programs_on_program_id"
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "employee_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "employee_type_id"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "customer_id"
    t.integer "payment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["payment_type_id"], name: "index_orders_on_payment_type_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.integer "credit_card_number"
    t.string "payment_type_name"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_payment_types_on_customer_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.float "product_price"
    t.string "product_title"
    t.integer "quantity"
    t.text "product_description"
    t.integer "customer_id"
    t.integer "product_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_products_on_customer_id"
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  create_table "training_programs", force: :cascade do |t|
    t.date "start_date"
    t.integer "max_occupancy"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
