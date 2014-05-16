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

ActiveRecord::Schema.define(version: 20140428034451) do

  create_table "municipios", force: true do |t|
    t.string   "name"
    t.float    "montoTotal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios_providers", id: false, force: true do |t|
    t.integer "municipio_id", null: false
    t.integer "provider_id",  null: false
  end

  add_index "municipios_providers", ["municipio_id", "provider_id"], name: "index_municipios_providers_on_municipio_id_and_provider_id", unique: true

  create_table "municipios_providers_joins", id: false, force: true do |t|
    t.integer "municipio_id"
    t.integer "provider_id"
  end

  create_table "obras", force: true do |t|
    t.string   "name"
    t.float    "monto"
    t.string   "status"
    t.integer  "avance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tipo"
    t.integer  "municipio_id"
    t.integer  "participantes"
  end

  create_table "providers", force: true do |t|
    t.string   "nombre"
    t.float    "ganancias"
    t.integer  "totalObras"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
