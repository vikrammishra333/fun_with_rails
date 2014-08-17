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

ActiveRecord::Schema.define(:version => 20140812195435) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "blog_address"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "blogs_users", :id => false, :force => true do |t|
    t.integer "blog_id"
    t.integer "user_id"
  end

  add_index "blogs_users", ["blog_id", "user_id"], :name => "index_blogs_users_on_blog_id_and_user_id", :unique => true
  add_index "blogs_users", ["user_id"], :name => "index_blogs_users_on_user_id"

  create_table "blogs_users_roles", :id => false, :force => true do |t|
    t.integer "users_role_id"
    t.integer "blog_id"
  end

  add_index "blogs_users_roles", ["blog_id"], :name => "index_users_roles_blogs_on_blog_id"
  add_index "blogs_users_roles", ["users_role_id", "blog_id"], :name => "index_users_roles_blogs_on_users_role_id_and_blog_id", :unique => true
  add_index "blogs_users_roles", ["users_role_id"], :name => "index_users_roles_blogs_on_users_role_id"

  create_table "categories", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "author_id"
    t.integer  "blog_id"
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"
  add_index "posts", ["blog_id"], :name => "index_posts_on_blog_id"

  create_table "posts_categories", :id => false, :force => true do |t|
    t.integer "post_id",     :null => false
    t.integer "category_id", :null => false
  end

  add_index "posts_categories", ["post_id", "category_id"], :name => "index_posts_categories_on_post_id_and_category_id", :unique => true

  create_table "posts_tags", :id => false, :force => true do |t|
    t.integer "post_id", :null => false
    t.integer "tag_id",  :null => false
  end

  add_index "posts_tags", ["post_id", "tag_id"], :name => "index_posts_tags_on_post_id_and_tag_id", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.integer  "role_id",                       :null => false
    t.boolean  "active",     :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id", :unique => true

end
