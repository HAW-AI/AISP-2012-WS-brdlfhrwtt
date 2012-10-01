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

ActiveRecord::Schema.define(:version => 20121001181931) do

  create_table "children", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children_groups", :id => false, :force => true do |t|
    t.integer "children_id"
    t.integer "groups_id"
  end

  add_index "children_groups", ["children_id", "groups_id"], :name => "index_children_groups_on_children_id_and_groups_id"
  add_index "children_groups", ["groups_id", "children_id"], :name => "index_children_groups_on_groups_id_and_children_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "kindergarten_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "groups", ["kindergarten_id"], :name => "index_groups_on_kindergarten_id"

  create_table "kindergartens", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
