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

ActiveRecord::Schema.define(version: 2021_02_23_174124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_letters", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "letter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_letters_on_game_id"
    t.index ["letter_id"], name: "index_game_letters_on_letter_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "score_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "letters", force: :cascade do |t|
    t.string "character"
    t.integer "point"
    t.boolean "vowel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_ranks", force: :cascade do |t|
    t.bigint "rank_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rank_id"], name: "index_player_ranks_on_rank_id"
    t.index ["user_id"], name: "index_player_ranks_on_user_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "game_letters", "games"
  add_foreign_key "game_letters", "letters"
  add_foreign_key "games", "users"
  add_foreign_key "player_ranks", "ranks"
  add_foreign_key "player_ranks", "users"
end
