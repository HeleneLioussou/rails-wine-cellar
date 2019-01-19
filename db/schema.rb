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

ActiveRecord::Schema.define(version: 2019_01_19_131404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bouteilles", force: :cascade do |t|
    t.integer "millesime"
    t.integer "apogee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "statut"
    t.bigint "cellar_id"
    t.bigint "vin_id"
    t.index ["cellar_id"], name: "index_bouteilles_on_cellar_id"
    t.index ["vin_id"], name: "index_bouteilles_on_vin_id"
  end

  create_table "cellars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_cellars_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vins", force: :cascade do |t|
    t.string "categorie"
    t.string "appellation"
    t.string "contenance"
    t.string "couleur"
    t.string "localite"
    t.string "domaine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bouteilles", "cellars"
  add_foreign_key "bouteilles", "vins"
  add_foreign_key "cellars", "users"
end
