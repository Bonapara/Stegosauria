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

ActiveRecord::Schema.define(version: 20180409095211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.date "when"
    t.string "content_type"
    t.text "content"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "biography"
    t.string "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
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
    t.integer "height"
    t.integer "width"
    t.integer "depth"
    t.boolean "priority"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name_gallery"
    t.text "description"
    t.string "photo_gallery"
    t.string "first_name_owner"
    t.string "last_name_owner"
    t.text "bio_owner"
    t.string "photo_owner"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_cases", force: :cascade do |t|
    t.bigint "artist_id"
    t.string "photo_artist"
    t.bigint "artwork_id"
    t.string "photo_artwork"
    t.bigint "article_id"
    t.string "photo_article"
    t.bigint "gallery_id"
    t.string "photo_gallery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "artist_description"
    t.string "artwork_description"
    t.string "article_description"
    t.string "gallery_description"
    t.index ["article_id"], name: "index_show_cases_on_article_id"
    t.index ["artist_id"], name: "index_show_cases_on_artist_id"
    t.index ["artwork_id"], name: "index_show_cases_on_artwork_id"
    t.index ["gallery_id"], name: "index_show_cases_on_gallery_id"
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
  add_foreign_key "show_cases", "articles"
  add_foreign_key "show_cases", "artists"
  add_foreign_key "show_cases", "artworks"
  add_foreign_key "show_cases", "galleries"
end
