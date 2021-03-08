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

ActiveRecord::Schema.define(version: 2021_03_08_015756) do

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
    t.integer "score"
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

  create_table "multi_games", force: :cascade do |t|
    t.string "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "multi_scores", force: :cascade do |t|
    t.integer "points"
    t.bigint "multi_game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
    t.string "player_name"
    t.index ["multi_game_id"], name: "index_multi_scores_on_multi_game_id"
  end

  create_table "player_ranks", force: :cascade do |t|
    t.bigint "rank_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rank_id"], name: "index_player_ranks_on_rank_id"
    t.index ["user_id"], name: "index_player_ranks_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "multi_game_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "title"
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
  add_foreign_key "multi_scores", "multi_games"
  add_foreign_key "player_ranks", "ranks"
  add_foreign_key "player_ranks", "users"
  add_foreign_key "players", "users"
end
