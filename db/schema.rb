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

ActiveRecord::Schema.define(version: 2021_04_01_065412) do

  create_table "entries", force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_entries_on_job_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title"
    t.integer "status"
    t.string "annualSalary"
    t.string "programmingLanguage"
    t.string "skillset"
    t.string "benefitProgram"
    t.string "holiday"
    t.string "desiredCharacteristics"
    t.string "selectionProcess"
    t.date "startingDate"
    t.integer "workplace"
    t.string "access"
    t.text "description"
    t.string "corporateName"
    t.string "corporateUrl"
    t.string "industry"
    t.string "address"
    t.text "introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "familyName"
    t.string "lastName"
    t.string "familyNameDetail"
    t.string "lastNameDetail"
    t.integer "gender"
    t.date "birthdate"
    t.integer "location"
    t.string "education"
    t.string "career"
    t.string "reason"
    t.string "strongPoint"
    t.string "weakPoint"
    t.string "goal"
    t.string "learningResource"
    t.string "informationResource"
    t.string "programmingLanguage"
    t.text "portfolio"
    t.string "futureProduct"
    t.text "introduction"
    t.integer "workplace"
    t.string "annualSalary"
    t.date "startingDate"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "jobs"
  add_foreign_key "entries", "users"
  add_foreign_key "jobs", "users"
end
