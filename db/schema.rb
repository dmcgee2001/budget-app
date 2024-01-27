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

ActiveRecord::Schema[7.0].define(version: 2024_01_27_232456) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fixed_expenses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "mortgage", precision: 6, scale: 2
    t.decimal "car_payment", precision: 6, scale: 2
    t.decimal "auto_insurance", precision: 6, scale: 2
    t.decimal "health_insurance", precision: 6, scale: 2
    t.decimal "life_insurance", precision: 6, scale: 2
    t.decimal "home_insurance", precision: 6, scale: 2
    t.decimal "renters_insurance", precision: 6, scale: 2
    t.decimal "dental_insurance", precision: 6, scale: 2
    t.decimal "other_insurance", precision: 6, scale: 2
    t.decimal "subscriptions", precision: 6, scale: 2
    t.decimal "student_loans", precision: 6, scale: 2
    t.decimal "cell_phone", precision: 6, scale: 2
    t.decimal "internet", precision: 6, scale: 2
    t.decimal "other", precision: 6, scale: 2
  end

  create_table "incomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "monthly_salary", precision: 7, scale: 2
    t.decimal "biweekly_salary", precision: 7, scale: 2
    t.decimal "weekly_salary", precision: 7, scale: 2
    t.decimal "rental_properties", precision: 7, scale: 2
    t.decimal "car_rental", precision: 7, scale: 2
    t.decimal "item_sales", precision: 7, scale: 2
    t.decimal "other", precision: 7, scale: 2
  end

  create_table "variable_expenses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "groceries", precision: 7, scale: 2
    t.decimal "gas", precision: 7, scale: 2
    t.decimal "eating_out", precision: 7, scale: 2
    t.decimal "personal_care", precision: 7, scale: 2
    t.decimal "utilities", precision: 7, scale: 2
    t.decimal "entertainment", precision: 7, scale: 2
    t.decimal "auto_maintenance", precision: 7, scale: 2
    t.decimal "property_maintenance", precision: 7, scale: 2
    t.decimal "other", precision: 7, scale: 2
  end

end
