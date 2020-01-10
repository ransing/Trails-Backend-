# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_10_223259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "create_events", force: :cascade do |t|
    t.string "details"
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_create_events_on_event_id"
    t.index ["user_id"], name: "index_create_events_on_user_id"
  end

  create_table "current_users", force: :cascade do |t|
    t.integer "current_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.string "details"
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_comments_on_event_id"
    t.index ["user_id"], name: "index_event_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.time "time"
    t.bigint "trail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
    t.string "detail"
    t.integer "duration"
    t.index ["trail_id"], name: "index_events_on_trail_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "type"
    t.string "summary"
    t.string "difficulty"
    t.integer "stars"
    t.integer "star_votes"
    t.string "location"
    t.string "url"
    t.string "imgSqSmall"
    t.string "imgSmall"
    t.string "imgSmallMed"
    t.string "imgMedium"
    t.integer "length"
    t.integer "ascent"
    t.integer "descent"
    t.integer "high"
    t.integer "low"
    t.integer "longitude"
    t.integer "latitude"
    t.string "conditionStatus"
    t.string "conditionDetails"
    t.string "conditionDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trail_comments", force: :cascade do |t|
    t.string "details"
    t.bigint "user_id", null: false
    t.bigint "trail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trail_id"], name: "index_trail_comments_on_trail_id"
    t.index ["user_id"], name: "index_trail_comments_on_user_id"
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.string "difficulty"
    t.integer "stars"
    t.integer "star_votes"
    t.string "location"
    t.string "url"
    t.string "imgSqSmall"
    t.string "imgSmall"
    t.string "imgSmallMed"
    t.string "imgMedium"
    t.integer "length"
    t.integer "ascent"
    t.integer "descent"
    t.integer "high"
    t.integer "low"
    t.integer "longitude"
    t.integer "latitude"
    t.string "conditionStatus"
    t.string "conditionDetails"
    t.string "conditionDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
  end

  create_table "user_events", force: :cascade do |t|
    t.string "details"
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "user_trails", force: :cascade do |t|
    t.string "details"
    t.bigint "user_id", null: false
    t.bigint "trail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trail_id"], name: "index_user_trails_on_trail_id"
    t.index ["user_id"], name: "index_user_trails_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "location"
    t.string "image"
    t.string "age"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "create_events", "events"
  add_foreign_key "create_events", "users"
  add_foreign_key "event_comments", "events"
  add_foreign_key "event_comments", "users"
  add_foreign_key "events", "trails"
  add_foreign_key "trail_comments", "trails"
  add_foreign_key "trail_comments", "users"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
  add_foreign_key "user_trails", "trails"
  add_foreign_key "user_trails", "users"
end
