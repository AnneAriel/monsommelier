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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_163603) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.boolean "cave_presence"
    t.integer "stock"
    t.bigint "wine_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
    t.index ["wine_id"], name: "index_bookmarks_on_wine_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "commentaire"
    t.integer "note"
    t.bigint "user_id", null: false
    t.integer "commented_on_id"
    t.string "commented_on_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.text "caracteristique"
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followers", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "user_followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "wine_id", null: false
    t.bigint "dish_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_matches_on_dish_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
    t.index ["wine_id"], name: "index_matches_on_wine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "domaine"
    t.string "appellation"
    t.integer "annee"
    t.string "couleur"
    t.string "code_barre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "user_id", null: false
    t.boolean "cave_presence"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wishlists_on_user_id"
    t.index ["wine_id"], name: "index_wishlists_on_wine_id"
  end

  add_foreign_key "bookmarks", "users"
  add_foreign_key "bookmarks", "wines"
  add_foreign_key "comments", "users"
  add_foreign_key "matches", "dishes"
  add_foreign_key "matches", "users"
  add_foreign_key "matches", "wines"
  add_foreign_key "wishlists", "users"
  add_foreign_key "wishlists", "wines"
end
