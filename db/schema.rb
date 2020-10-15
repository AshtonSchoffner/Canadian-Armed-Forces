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

ActiveRecord::Schema.define(version: 2020_10_15_204624) do

  create_table "environments", force: :cascade do |t|
    t.string "environment_el"
    t.string "environment_fr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name_el"
    t.string "name_fr"
    t.text "description_el"
    t.text "description_fr"
    t.integer "equipment_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_type_id"], name: "index_equipment_on_equipment_type_id"
  end

  create_table "equipment_types", force: :cascade do |t|
    t.string "type_el"
    t.string "type_fr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name_el"
    t.string "name_fr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rank_categories", force: :cascade do |t|
    t.string "category_el"
    t.string "category_fr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "rank_el"
    t.string "rank_fr"
    t.integer "rank_category_id", null: false
    t.integer "environment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["environment_id"], name: "index_ranks_on_environment_id"
    t.index ["rank_category_id"], name: "index_ranks_on_rank_category_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name_el"
    t.string "name_fr"
    t.datetime "year_made"
    t.integer "quantity"
    t.integer "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_vehicles_on_organization_id"
  end

  add_foreign_key "ranks", "environments"
  add_foreign_key "ranks", "rank_categories"
  add_foreign_key "vehicles", "organizations"
end
