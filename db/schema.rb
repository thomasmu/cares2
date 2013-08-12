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

ActiveRecord::Schema.define(:version => 20130811235951) do

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.integer  "city_region_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "city_regions", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurant_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "city_region_id"
    t.string   "phone"
    t.string   "operating_hour"
    t.string   "operating_weekend"
    t.string   "off_day"
    t.string   "website"
    t.integer  "specialty_id"
    t.integer  "specialty_area_id"
    t.integer  "restaurant_type_id"
    t.string   "keyword"
    t.integer  "category_id"
    t.integer  "seat"
    t.float    "map"
    t.boolean  "chain"
    t.string   "average_spending"
    t.boolean  "delivery"
    t.boolean  "park_area"
    t.boolean  "vip_room"
    t.boolean  "wifi"
    t.boolean  "reservation_needed"
    t.boolean  "outdoor"
    t.boolean  "halal_certificate"
    t.integer  "payment_option"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "area_id"
    t.string   "permalink"
  end

  create_table "restaurants_city_regions", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "city_region_id"
  end

  create_table "restaurants_restaurant_types", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "restaurant_type_id"
  end

  create_table "restaurants_specialties", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "specialty_id"
  end

  create_table "restaurants_speciaty_areas", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "specialty_area_id"
  end

  create_table "specialties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specialty_areas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
