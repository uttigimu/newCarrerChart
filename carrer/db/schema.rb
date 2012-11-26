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

ActiveRecord::Schema.define(:version => 20121126122334) do

  create_table "after_interships", :force => true do |t|
    t.integer  "intershipPriod"
    t.string   "workingHours"
    t.text     "impressionContents"
    t.string   "levelOfAchievement"
    t.text     "overallImpression"
    t.text     "ambition"
    t.text     "commentsOfTachers"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "before_interships", :force => true do |t|
    t.string   "company"
    t.string   "capital"
    t.string   "business"
    t.string   "delegate"
    t.string   "address1"
    t.string   "address2"
    t.string   "intershipsContent"
    t.string   "unit"
    t.string   "receivingPerson"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "charts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
