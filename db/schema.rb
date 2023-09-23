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

ActiveRecord::Schema[7.0].define(version: 2023_09_23_084025) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mynewcomment_news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mynewcomments", force: :cascade do |t|
    t.bigint "myuser_id", null: false
    t.bigint "mynewpost_id", null: false
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mynewpost_id"], name: "index_mynewcomments_on_mynewpost_id"
    t.index ["myuser_id"], name: "index_mynewcomments_on_myuser_id"
  end

  create_table "mynewlikes", force: :cascade do |t|
    t.bigint "myuser_id", null: false
    t.bigint "mynewpost_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mynewpost_id"], name: "index_mynewlikes_on_mynewpost_id"
    t.index ["myuser_id"], name: "index_mynewlikes_on_myuser_id"
  end

  create_table "mynewlikes_news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mynewpost_news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mynewposts", force: :cascade do |t|
    t.bigint "author_id", null: false
    t.string "title"
    t.text "text"
    t.integer "comments_counter"
    t.integer "likes_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_mynewposts_on_author_id"
  end

  create_table "myusers", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "mynewcomments", "mynewposts"
  add_foreign_key "mynewcomments", "myusers"
  add_foreign_key "mynewlikes", "mynewposts"
  add_foreign_key "mynewlikes", "myusers"
  add_foreign_key "mynewposts", "myusers", column: "author_id"
end
