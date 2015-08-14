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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150814064903) do

  create_table "employees", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "contact_info", limit: 255
    t.integer  "status",       limit: 4
    t.integer  "salary",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "employees_skills", force: :cascade do |t|
    t.integer "employee_id", limit: 4
    t.integer "skill_id",    limit: 4
  end

  add_index "employees_skills", ["employee_id"], name: "index_employees_skills_on_employee_id", using: :btree
  add_index "employees_skills", ["skill_id"], name: "index_employees_skills_on_skill_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "skills_vacancies", force: :cascade do |t|
    t.integer "vacancy_id", limit: 4
    t.integer "skill_id",   limit: 4
  end

  add_index "skills_vacancies", ["skill_id"], name: "index_skills_vacancies_on_skill_id", using: :btree
  add_index "skills_vacancies", ["vacancy_id"], name: "index_skills_vacancies_on_vacancy_id", using: :btree

  create_table "vacancies", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.date     "date_of_submit"
    t.date     "date_of_expiry"
    t.integer  "salary",         limit: 4
    t.string   "contact_info",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
