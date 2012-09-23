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

ActiveRecord::Schema.define(:version => 20120916130018) do

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "rank"
  end

  add_index "images", ["rank"], :name => "index_images_on_rank"

  create_table "items", :force => true do |t|
    t.string   "title"
    t.string   "teaser"
    t.text     "lead"
    t.text     "content"
    t.string   "dateline"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "teaser"
    t.text     "lead"
    t.text     "content"
    t.string   "authors"
    t.string   "collaborators"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
