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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604204253) do

  create_table "cheeses", :force => true do |t|
    t.string   "name"
    t.boolean  "origin_protected"
    t.string   "image_url"
    t.float    "average_rating"
    t.integer  "milk_type_id"
    t.integer  "country_id"
    t.integer  "texture_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "cheeses", ["country_id"], :name => "index_cheeses_on_country_id"
  add_index "cheeses", ["milk_type_id"], :name => "index_cheeses_on_milk_type_id"
  add_index "cheeses", ["texture_id"], :name => "index_cheeses_on_texture_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "flag_url"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "milk_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "owners", :force => true do |t|
    t.string   "email_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "star_rating"
    t.text     "text_rating"
    t.boolean  "is_favourite"
    t.integer  "user_id"
    t.integer  "cheese_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "ratings", ["cheese_id"], :name => "index_ratings_on_cheese_id"
  add_index "ratings", ["user_id", "cheese_id"], :name => "index_ratings_on_user_id_and_cheese_id"
  add_index "ratings", ["user_id"], :name => "index_ratings_on_user_id"

  create_table "textures", :force => true do |t|
    t.string   "texture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email_address"
    t.string   "avatar"
    t.string   "alias"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
