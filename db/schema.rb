# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_713_163_744) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'glampings', force: :cascade do |t|
    t.string 'name'
    t.string 'glamping_type'
    t.text 'description'
    t.string 'image'
    t.decimal 'daily_rate'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'location'
  end

  create_table 'reservations', force: :cascade do |t|
    t.date 'reservation_date'
    t.date 'due_date'
    t.decimal 'service_fee'
    t.bigint 'user_id', null: false
    t.bigint 'glamping_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['glamping_id'], name: 'index_reservations_on_glamping_id'
    t.index ['user_id'], name: 'index_reservations_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'reservations', 'glampings'
  add_foreign_key 'reservations', 'users'
end