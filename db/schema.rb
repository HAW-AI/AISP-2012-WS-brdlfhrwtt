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

ActiveRecord::Schema.define(:version => 20121122012340) do

  create_table "accounts", :force => true do |t|
    t.boolean  "day_care_coupon"
    t.integer  "child_id"
    t.integer  "net_income"
    t.integer  "person_count"
    t.integer  "child_count"
    t.integer  "birth_sequence_position"
    t.boolean  "free_preschool_year"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children", :force => true do |t|
    t.string   "nick"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.boolean  "disability", :default => false
    t.date     "born_at"
    t.integer  "parent_id"
    t.string   "token"
  end

  create_table "children_groups", :id => false, :force => true do |t|
    t.integer  "child_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "children_groups", ["child_id", "group_id"], :name => "index_children_groups_on_children_id_and_groups_id"
  add_index "children_groups", ["group_id", "child_id"], :name => "index_children_groups_on_groups_id_and_children_id"

  create_table "fees", :force => true do |t|
    t.integer  "care_time"
    t.datetime "valid_at"
    t.integer  "max_age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "kindergarten_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "limit"
    t.time     "starts_on"
    t.time     "ends_on"
  end

  add_index "groups", ["kindergarten_id"], :name => "index_groups_on_kindergarten_id"

  create_table "kindergartens", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.integer  "kindergarten_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "parents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rates", :force => true do |t|
    t.integer  "net_income"
    t.integer  "two_people"
    t.integer  "three_people"
    t.integer  "four_people"
    t.integer  "five_people"
    t.integer  "six_people"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "fee_id"
    t.integer  "state_id"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                               :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "type",             :default => "Parent"
    t.string   "name"
    t.integer  "kindergarten_id"
  end

  create_table "waitlists", :force => true do |t|
    t.integer  "group_id"
    t.integer  "child_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
