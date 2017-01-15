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

ActiveRecord::Schema.define(version: 20170112214712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.integer  "user_id",                                                                                                                null: false
    t.string   "title",                                                                                                                  null: false
    t.string   "image_url",      default: "https://res.cloudinary.com/joycechau/image/upload/v1484519242/default_recipe_detail_pic.gif"
    t.integer  "average_rating"
    t.string   "category",                                                                                                               null: false
    t.text     "description",                                                                                                            null: false
    t.string   "ingredients",    default: [],                                                                                            null: false, array: true
    t.string   "directions",     default: [],                                                                                            null: false, array: true
    t.datetime "created_at",                                                                                                             null: false
    t.datetime "updated_at",                                                                                                             null: false
    t.index ["user_id"], name: "index_recipes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                                                                                                          null: false
    t.string   "password_digest",                                                                                                   null: false
    t.string   "session_token",                                                                                                     null: false
    t.string   "fname"
    t.string   "lname"
    t.string   "profile_url",     default: "https://res.cloudinary.com/joycechau/image/upload/v1484519058/default_profile_pic.jpg"
    t.text     "interests"
    t.datetime "created_at",                                                                                                        null: false
    t.datetime "updated_at",                                                                                                        null: false
    t.index ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
