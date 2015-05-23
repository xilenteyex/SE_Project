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

ActiveRecord::Schema.define(:version => 20150523052126) do

  create_table "child_infos", :force => true do |t|
    t.string   "name"
    t.string   "family_number"
    t.string   "nurse_name"
    t.datetime "date_of_birth"
    t.datetime "polio_1"
    t.datetime "polio_2"
    t.datetime "polio_3"
    t.datetime "polio_4"
    t.datetime "measles_1"
    t.datetime "measles_2"
    t.string   "cnic"
  end

  create_table "famliy_planning_infos", :force => true do |t|
    t.string  "name"
    t.string  "husband_name"
    t.string  "family_number"
    t.integer "age"
    t.string  "provided_by"
    t.string  "method"
    t.string  "nurse_cnic"
  end

  create_table "nurse_infos", :force => true do |t|
    t.string   "name"
    t.string   "cnic"
    t.string   "rank"
    t.datetime "date_of_birth"
    t.string   "password"
  end

  create_table "pregnant_women_infos", :force => true do |t|
    t.string   "name"
    t.string   "family_number"
    t.datetime "TT1"
    t.datetime "TT2"
    t.datetime "checkup1"
    t.datetime "checkup2"
    t.datetime "checkup3"
    t.datetime "checkup4"
    t.string   "hospital"
    t.string   "place_of_birth"
    t.string   "result_pregnancy"
    t.string   "nurse_cnic"
  end

end
