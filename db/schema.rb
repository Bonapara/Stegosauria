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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180501084711) do
=======
ActiveRecord::Schema.define(version: 20180430181455) do
>>>>>>> 0416db34cb389abb4206e163051f4fa4bf83cfef

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actus", force: :cascade do |t|
    t.string "name"
    t.string "title_2"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "actu_type"
    t.string "dates"
    t.date "publication_date"
  end

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "biography"
    t.string "speciality1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "speciality2"
    t.string "photo_artwork"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "artwork_domain"
    t.text "description"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.boolean "sold"
    t.string "height"
    t.string "width"
    t.string "depth"
    t.boolean "priority"
    t.string "price"
    t.string "number"
    t.string "year"
    t.string "technique"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  create_table "ckeditor_assets", id: :serial, force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "expos", force: :cascade do |t|
    t.string "name"
    t.string "expo_type"
    t.string "artistes"
    t.string "location"
    t.date "date_from"
    t.date "date_to"
    t.date "vernissage_date"
    t.time "vernissage_hours_from"
    t.time "vernissage_hours_to"
    t.text "descriptions_expo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "galeries", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "title_1"
    t.text "description_1"
    t.string "title_2"
    t.text "description_2"
    t.string "address"
    t.string "opening_hours"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_cases", force: :cascade do |t|
    t.bigint "artist_id"
    t.string "photo_artist"
    t.bigint "artwork_id"
    t.string "photo_artwork"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "artist_description"
    t.string "artwork_description"
    t.bigint "expo_id"
    t.string "photo_expo"
    t.string "expo_description"
    t.bigint "galerie_id"
    t.string "photo_galerie"
    t.string "galerie_description"
    t.bigint "actu_id"
    t.string "photo_actu"
    t.string "actu_description"
    t.integer "position_expo"
    t.index ["actu_id"], name: "index_show_cases_on_actu_id"
    t.index ["artist_id"], name: "index_show_cases_on_artist_id"
    t.index ["artwork_id"], name: "index_show_cases_on_artwork_id"
    t.index ["expo_id"], name: "index_show_cases_on_expo_id"
    t.index ["galerie_id"], name: "index_show_cases_on_galerie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artworks", "artists"
  add_foreign_key "show_cases", "actus"
  add_foreign_key "show_cases", "artists"
  add_foreign_key "show_cases", "artworks"
  add_foreign_key "show_cases", "expos"
  add_foreign_key "show_cases", "galeries", column: "galerie_id"
end
