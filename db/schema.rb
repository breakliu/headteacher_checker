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

ActiveRecord::Schema.define(:version => 20121024014656) do

  create_table "grades", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "position"
    t.string   "teacher_name"
  end

  create_table "lists", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "year_id"
    t.integer  "month_id"
  end

  create_table "months", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "tname"
    t.integer  "list_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "gname"
    t.string   "class_info_1",          :default => ""
    t.string   "class_info_2",          :default => ""
    t.string   "class_info_3",          :default => ""
    t.string   "class_info_4",          :default => ""
    t.string   "student_growup_record", :default => ""
    t.string   "mark_column",           :default => ""
    t.string   "class_news_1",          :default => ""
    t.string   "class_news_2",          :default => ""
    t.string   "class_news_3",          :default => ""
    t.string   "class_news_4",          :default => ""
    t.string   "reading_show",          :default => ""
    t.string   "writing_show",          :default => ""
    t.string   "morning_meeting",       :default => ""
    t.string   "one_min_rite",          :default => ""
    t.string   "wall_newspaper",        :default => ""
    t.string   "class_health",          :default => ""
    t.string   "reading_status",        :default => ""
    t.string   "homework_writing_1",    :default => ""
    t.string   "homework_writing_2",    :default => ""
    t.string   "homework_writing_3",    :default => ""
    t.string   "homework_format_1",     :default => ""
    t.string   "homework_format_2",     :default => ""
    t.string   "homework_format_3",     :default => ""
  end

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

  create_table "years", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
