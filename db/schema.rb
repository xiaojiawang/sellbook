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

ActiveRecord::Schema.define(:version => 20171023030026) do

  create_table "books", :force => true do |t|
    t.integer  "user_id",                                                  :null => false
    t.string   "name",                                                     :null => false
    t.string   "author"
    t.text     "description"
    t.decimal  "price",       :precision => 5, :scale => 2,                :null => false
    t.integer  "status",                                    :default => 1, :null => false
    t.integer  "position",                                  :default => 1, :null => false
    t.string   "pic_key"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",                       :null => false
    t.string   "pinyin"
    t.integer  "province_id", :default => 9, :null => false
    t.integer  "sort",        :default => 0, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "cities", ["province_id"], :name => "index_cities_on_province_id"

  create_table "provinces", :force => true do |t|
    t.string   "name",                      :null => false
    t.string   "pinyin"
    t.integer  "sort",       :default => 0, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "mobile",          :null => false
    t.string   "password_digest", :null => false
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "province_id"
    t.integer  "city_id"
  end

end
