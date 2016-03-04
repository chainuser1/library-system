# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160304170831) do

  create_table "book_types", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "book_types", ["category"], name: "index_book_types_on_category", unique: true, using: :btree

  create_table "books", id: false, force: :cascade do |t|
    t.string   "isbn",        limit: 255
    t.string   "title",       limit: 255
    t.string   "author",      limit: 255
    t.string   "category",    limit: 255
    t.string   "publisher",   limit: 255
    t.date     "copyright"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true, using: :btree

  create_table "profiles", id: false, force: :cascade do |t|
    t.string   "user_email", limit: 255
    t.string   "fname",      limit: 255
    t.string   "lname",      limit: 255
    t.string   "gender",     limit: 255
    t.string   "address",    limit: 255
    t.date     "birthdate"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_email"], name: "fk_rails_7da496a489", using: :btree

  create_table "users", id: false, force: :cascade do |t|
    t.string   "email",           limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "password_digest", limit: 255
    t.integer  "role",            limit: 4,   default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "profiles", "users", column: "user_email", primary_key: "email", on_delete: :cascade
end
