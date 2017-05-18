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

ActiveRecord::Schema.define(version: 20170517234826) do

  create_table "railswiki_histories", force: :cascade do |t|
    t.integer  "page_id"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_railswiki_histories_on_author_id"
    t.index ["page_id"], name: "index_railswiki_histories_on_page_id"
  end

  create_table "railswiki_invites", force: :cascade do |t|
    t.string   "email",            null: false
    t.datetime "accepted_at"
    t.integer  "inviting_user_id", null: false
    t.integer  "invited_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "role"
    t.index ["invited_user_id"], name: "index_railswiki_invites_on_invited_user_id"
    t.index ["inviting_user_id"], name: "index_railswiki_invites_on_inviting_user_id"
  end

  create_table "railswiki_pages", force: :cascade do |t|
    t.string   "title"
    t.integer  "latest_version_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "lowercase_title"
    t.index ["latest_version_id"], name: "index_railswiki_pages_on_latest_version_id"
    t.index ["lowercase_title"], name: "index_railswiki_pages_on_lowercase_title", unique: true
    t.index ["title"], name: "index_railswiki_pages_on_title", unique: true
  end

  create_table "railswiki_uploaded_files", force: :cascade do |t|
    t.string   "file"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.index ["user_id"], name: "index_railswiki_uploaded_files_on_user_id"
  end

  create_table "railswiki_users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "refresh_token"
    t.string   "access_token"
    t.datetime "expires"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email"
    t.string   "image_url"
    t.datetime "last_login"
    t.string   "role"
    t.index ["email"], name: "index_railswiki_users_on_email", unique: true
    t.index ["role"], name: "index_railswiki_users_on_role"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

end
