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

ActiveRecord::Schema.define(:version => 20120626225932) do

  create_table "admin_users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "email",           :limit => 25, :default => "", :null => false
    t.string   "hashed_password", :limit => 40
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "username",        :limit => 25
    t.string   "salt",            :limit => 40
  end

  add_index "admin_users", ["username"], :name => "index_admin_users_on_username"

  create_table "briefs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commissions", :force => true do |t|
    t.integer  "commission_value"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "galleries", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photographers", :force => true do |t|
    t.string   "first_name",    :limit => 25
    t.string   "last_name",     :limit => 25
    t.string   "phone_number",  :limit => 11
    t.string   "email_address", :limit => 25
    t.string   "website_url",   :limit => 25
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "style_id"
    t.integer  "commission_id"
    t.integer  "location_id"
    t.string   "project_type"
    t.integer  "price_id"
    t.integer  "rating_id"
  end

  add_index "photographers", ["commission_id"], :name => "index_photographers_on_commission_id"
  add_index "photographers", ["location_id"], :name => "index_photographers_on_location_id"
  add_index "photographers", ["price_id"], :name => "index_photographers_on_price_id"
  add_index "photographers", ["rating_id"], :name => "index_photographers_on_rating_id"
  add_index "photographers", ["style_id"], :name => "index_photographers_on_style_id"

  create_table "photos", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.datetime "review_date"
    t.integer  "review_score"
    t.text     "review_text"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "styles", :force => true do |t|
    t.string   "style_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
