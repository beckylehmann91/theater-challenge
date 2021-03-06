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

ActiveRecord::Schema.define(version: 20160329150516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "auditoria", force: :cascade do |t|
    t.string  "name"
    t.integer "capacity"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "showing_id"
    t.string  "name"
    t.string  "email"
    t.string  "credit_card"
    t.date    "card_expy_date"
  end

  create_table "showings", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "auditorium_id"
    t.date    "date"
    t.time    "time"
  end

end
