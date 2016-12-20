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

ActiveRecord::Schema.define(version: 20161220134349) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.integer  "countries_id"
    t.string   "biography"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.string   "abstract"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "linearity_id"
    t.integer  "author_id"
  end

  create_table "books_genres", id: false, force: true do |t|
    t.integer "genre_id"
    t.integer "book_id"
  end

  add_index "books_genres", ["book_id"], name: "index_books_genres_on_book_id"
  add_index "books_genres", ["genre_id"], name: "index_books_genres_on_genre_id"

  create_table "books_plots", id: false, force: true do |t|
    t.integer "plot_id"
    t.integer "book_id"
  end

  add_index "books_plots", ["book_id"], name: "index_books_plots_on_book_id"
  add_index "books_plots", ["plot_id"], name: "index_books_plots_on_plot_id"

  create_table "books_scene_of_actions", id: false, force: true do |t|
    t.integer "scene_of_action_id"
    t.integer "book_id"
  end

  add_index "books_scene_of_actions", ["book_id"], name: "index_books_scene_of_actions_on_book_id"
  add_index "books_scene_of_actions", ["scene_of_action_id"], name: "index_books_scene_of_actions_on_scene_of_action_id"

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["book_id"], name: "index_comments_on_book_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "linearities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plots", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scene_of_actions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "types", ["name"], name: "index_types_on_name"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
