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

ActiveRecord::Schema.define(:version => 20120504065000) do

  create_table "ba_deliverables", :force => true do |t|
    t.date     "internal_date"
    t.boolean  "internal_signoff"
    t.date     "external_date"
    t.boolean  "external_signoff"
    t.date     "final_date"
    t.string   "comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "deliverables", :force => true do |t|
    t.string   "description"
    t.string   "user_id"
    t.string   "project_id"
    t.string   "spec_name"
    t.string   "spec_progress"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "ba_deliverable_id"
    t.string   "tech_deliverable_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "dmr"
    t.string   "software_release_id"
    t.string   "warrant_status"
    t.string   "work_order"
    t.string   "rfc"
    t.string   "timesheets_request_date"
    t.string   "admin_ref"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "software_releases", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "version"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tech_deliverables", :force => true do |t|
    t.string   "spec_name"
    t.string   "spec_progress"
    t.date     "spec_review"
    t.string   "code_progress"
    t.date     "code_review"
    t.boolean  "code_staged"
    t.string   "comments"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_teams", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone_number"
    t.string   "role_id"
    t.string   "team_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
