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

ActiveRecord::Schema.define(version: 20150520180822) do

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "place"
    t.text     "description"
    t.string   "linkfb"
    t.string   "contact"
    t.string   "photo1"
    t.string   "photo2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "email"
    t.integer  "year"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formalities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "contact"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lives", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "msas", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prearrivals", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scholarships", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
