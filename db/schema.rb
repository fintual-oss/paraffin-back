# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_02_150916) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "completed_learning_units", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "learning_unit_id", null: false
    t.index ["user_id", "learning_unit_id"], name: "index_completed_learning_units_on_user_id_and_learning_unit_id", unique: true
  end

  create_table "curriculum_affiliations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "curriculum_id"
    t.bigint "learning_unit_id"
    t.index ["curriculum_id"], name: "index_curriculum_affiliations_on_curriculum_id"
    t.index ["learning_unit_id"], name: "index_curriculum_affiliations_on_learning_unit_id"
  end

  create_table "curriculums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cycle_learning_units", force: :cascade do |t|
    t.integer "cycle_id", null: false
    t.integer "learning_unit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cycles", force: :cascade do |t|
    t.integer "curriculum_id"
    t.string "name", null: false
    t.integer "order_number", null: false
    t.text "learning_goals_description", null: false
    t.text "challenge_description", null: false
    t.string "boilerplate_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name", null: false
    t.string "icon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learning_unit_successions", force: :cascade do |t|
    t.bigint "cycle_id", null: false
    t.bigint "predecessor_id", null: false
    t.bigint "successor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cycle_id"], name: "index_learning_unit_successions_on_cycle_id"
    t.index ["predecessor_id"], name: "index_learning_unit_successions_on_predecessor_id"
    t.index ["successor_id"], name: "index_learning_unit_successions_on_successor_id"
    t.check_constraint "predecessor_id <> successor_id", name: "different_learning_units_for_succession"
  end

  create_table "learning_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description", null: false
    t.string "image_url"
  end

  create_table "resource_comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "resource_id"
    t.index ["resource_id"], name: "index_resource_comments_on_resource_id"
    t.index ["user_id"], name: "index_resource_comments_on_user_id"
  end

  create_table "resource_evaluations", force: :cascade do |t|
    t.integer "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resource_id"
    t.bigint "user_id"
    t.string "comment"
    t.index ["resource_id"], name: "index_resource_evaluations_on_resource_id"
    t.index ["user_id", "resource_id"], name: "index_resource_evaluations_on_user_id_and_resource_id", unique: true
    t.index ["user_id"], name: "index_resource_evaluations_on_user_id"
  end

  create_table "resource_labels", force: :cascade do |t|
    t.bigint "resource_id", null: false
    t.bigint "label_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_resource_labels_on_label_id"
    t.index ["resource_id"], name: "index_resource_labels_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "learning_unit_id"
    t.index ["learning_unit_id"], name: "index_resources_on_learning_unit_id"
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "completed_learning_units", "learning_units"
  add_foreign_key "completed_learning_units", "users"
  add_foreign_key "curriculum_affiliations", "curriculums"
  add_foreign_key "curriculum_affiliations", "learning_units"
  add_foreign_key "learning_unit_successions", "cycles"
  add_foreign_key "learning_unit_successions", "learning_units", column: "predecessor_id"
  add_foreign_key "learning_unit_successions", "learning_units", column: "successor_id"
  add_foreign_key "resource_comments", "resources"
  add_foreign_key "resource_comments", "users"
  add_foreign_key "resource_evaluations", "resources"
  add_foreign_key "resource_evaluations", "users"
  add_foreign_key "resource_labels", "labels"
  add_foreign_key "resource_labels", "resources"
  add_foreign_key "resources", "learning_units"
  add_foreign_key "resources", "users"
end
