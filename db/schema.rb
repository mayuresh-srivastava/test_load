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

ActiveRecord::Schema.define(version: 20161002182749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_informations", force: :cascade do |t|
    t.boolean  "is_vet"
    t.boolean  "is_vet_tech_nurse"
    t.boolean  "is_rsrchr"
    t.string   "best_desc_wrkplc"
    t.string   "how_load_be_used"
    t.string   "how_hear_abt_load"
    t.boolean  "terms_condtn"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_business_informations_on_user_id", using: :btree
  end

  create_table "downloads", force: :cascade do |t|
    t.string   "language"
    t.boolean  "is_prdct_branded"
    t.boolean  "int_vst"
    t.boolean  "flp_vst"
    t.boolean  "both"
    t.boolean  "is_downloaded"
    t.date     "download_date"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_downloads_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "buss_name"
    t.string   "street"
    t.string   "city"
    t.string   "state_prvnc_cntry"
    t.string   "zip_postal_cd"
    t.string   "country"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_foreign_key "business_informations", "users"
  add_foreign_key "downloads", "users"
end
