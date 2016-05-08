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

ActiveRecord::Schema.define(version: 20160427215704) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "ap_paterno",       limit: 255
    t.string   "ap_materno",       limit: 255
    t.string   "sexo",             limit: 255
    t.string   "curp",             limit: 255
    t.string   "fecha_nacimiento", limit: 255
    t.string   "grado",            limit: 255
    t.string   "grupo",            limit: 255
    t.string   "nombre_tutor",     limit: 255
    t.string   "ap_paterno_tutor", limit: 255
    t.string   "ap_materno_tutor", limit: 255
    t.string   "direccion",        limit: 255
    t.string   "telefono",         limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "maestros", force: :cascade do |t|
    t.string   "nombre_m",     limit: 255
    t.string   "ap_paterno_m", limit: 255
    t.string   "ap_materno_m", limit: 255
    t.string   "grado_m",      limit: 255
    t.string   "grupo_m",      limit: 255
    t.string   "telefono_m",   limit: 255
    t.string   "direccion_m",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
