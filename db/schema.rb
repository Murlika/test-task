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

ActiveRecord::Schema.define(version: 2018_10_11_081232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "txt"
    t.integer "question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "txt"
    t.integer "test_id"
    t.integer "answer_true_ids", array: true
    t.index ["test_id"], name: "index_questions_on_test_id"
  end

  create_table "test_passings", force: :cascade do |t|
    t.integer "test_id"
    t.integer "user_id"
    t.integer "enum_questions", array: true
    t.integer "user_answers", array: true
    t.integer "user_results", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_state"
  end

  create_table "tests", force: :cascade do |t|
    t.string "title"
    t.text "desc"
    t.integer "N"
  end

end
