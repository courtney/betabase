# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 6) do

  create_table "permissions", :force => true do |t|
    t.integer  "role_id",    :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problem_versions", :force => true do |t|
    t.integer  "problem_id"
    t.integer  "version"
    t.string   "name"
    t.integer  "grade"
    t.integer  "grade_alt"
    t.string   "exposure"
    t.integer  "star"
    t.boolean  "morph"
    t.string   "feature"
    t.string   "fa_name"
    t.string   "fa_date"
    t.string   "boulder"
    t.string   "area"
    t.string   "gps"
    t.text     "boulder_directions"
    t.text     "problem_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", :force => true do |t|
    t.string   "name"
    t.integer  "grade"
    t.integer  "grade_alt"
    t.string   "exposure"
    t.integer  "star"
    t.boolean  "morph"
    t.string   "feature"
    t.string   "fa_name"
    t.string   "fa_date"
    t.string   "boulder"
    t.string   "area"
    t.string   "gps"
    t.text     "boulder_directions"
    t.text     "problem_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "version"
  end

  create_table "roles", :force => true do |t|
    t.string   "rolename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "password_reset_code",       :limit => 40
    t.boolean  "enabled",                                 :default => true
    t.datetime "deleted_at"
  end

end
