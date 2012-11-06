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

ActiveRecord::Schema.define(:version => 20121105031353) do

  create_table "ba_specs", :force => true do |t|
    t.integer  "deliverable_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "comments"
    t.integer  "progress",                :default => 0
    t.date     "internal_review_date"
    t.boolean  "internal_review_signoff"
    t.date     "external_review_date"
    t.boolean  "external_review_signoff"
    t.date     "final_version"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "effort"
  end

  create_table "code", :force => true do |t|
    t.integer  "deliverable_id"
    t.integer  "user_id"
    t.string   "comments"
    t.integer  "progress",         :default => 0
    t.date     "code_review_date"
    t.date     "q_level_date"
    t.date     "staged_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "effort"
  end

  create_table "deliverables", :force => true do |t|
    t.string   "description"
    t.string   "project_id"
    t.integer  "team_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "milestone_id"
    t.string   "comment"
  end

  create_table "milestones", :force => true do |t|
    t.integer  "software_release_id"
    t.integer  "project_id"
    t.string   "work_order"
    t.date     "timesheets_request_date"
    t.string   "business_pm"
    t.string   "it_pm"
    t.string   "test_manager"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.boolean  "approval_status"
  end

  create_table "overheads", :force => true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.integer  "effort"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "deliverable_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "dmr"
    t.string   "admin_ref"
    t.string   "category"
    t.string   "work_plan_id"
    t.boolean  "approval_status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "release_projects", :force => true do |t|
    t.integer  "project_id"
    t.integer  "software_release_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "rfcs", :force => true do |t|
    t.string   "description"
    t.integer  "rfc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "milestone_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "software_releases", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "version"
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

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tech_specs", :force => true do |t|
    t.integer  "deliverable_id"
    t.integer  "user_id"
    t.string   "name"
    t.integer  "effort"
    t.string   "comments"
    t.integer  "progress",                :default => 0
    t.date     "internal_review_date"
    t.boolean  "internal_review_signoff"
    t.date     "final_version"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_teams", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "telephone_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "username"
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
