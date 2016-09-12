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

ActiveRecord::Schema.define(version: 20160912180328) do

  create_table "answer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_type"
    t.string   "name"
    t.text     "content"
    t.boolean  "selected"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "correct"
  end

  create_table "form_groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "form_group_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "template"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "question_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "form_id"
    t.integer  "question_type_id"
    t.text     "content"
    t.integer  "order"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
