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

ActiveRecord::Schema.define(version: 20140714000325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string "name"
    t.string "character"
    t.string "profile_path"
  end

  create_table "actors_shows", force: true do |t|
    t.integer "actor_id"
    t.integer "show_id"
  end

  create_table "favorites", force: true do |t|
    t.integer "user_id"
    t.integer "show_id"
    t.text    "comment"
    t.integer "rating"
  end

  create_table "seasons", force: true do |t|
    t.integer "season_number"
    t.string  "air_date"
    t.string  "poster_path"
    t.integer "show_id"
  end

  create_table "shows", force: true do |t|
    t.string "title"
    t.string "image_url"
    t.date   "first_air_date"
    t.text   "plot"
    t.string "genre"
    t.string "network"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
    t.date   "birthday"
    t.string "phone"
  end

end
