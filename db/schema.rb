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

ActiveRecord::Schema.define(version: 2018_10_31_094000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colocations", force: :cascade do |t|
    t.text "address"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tache_menageres", force: :cascade do |t|
    t.text "name"
    t.integer "frequence"
    t.bigint "user_id"
    t.bigint "colocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colocation_id"], name: "index_tache_menageres_on_colocation_id"
    t.index ["user_id"], name: "index_tache_menageres_on_user_id"
  end

  create_table "user_colocations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "colocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["colocation_id"], name: "index_user_colocations_on_colocation_id"
    t.index ["user_id"], name: "index_user_colocations_on_user_id"
  end

  create_table "user_tans", force: :cascade do |t|
    t.integer "score"
    t.bigint "user_id"
    t.bigint "tache_menagere_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tache_menagere_id"], name: "index_user_tans_on_tache_menagere_id"
    t.index ["user_id"], name: "index_user_tans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "mail_address"
    t.text "password"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tache_menageres", "colocations"
  add_foreign_key "tache_menageres", "users"
  add_foreign_key "user_colocations", "colocations"
  add_foreign_key "user_colocations", "users"
  add_foreign_key "user_tans", "tache_menageres"
  add_foreign_key "user_tans", "users"
end
