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

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.string   "sexo"
    t.string   "curp"
    t.string   "fecha_nacimiento"
    t.string   "grado"
    t.string   "grupo"
    t.string   "nombre_tutor"
    t.string   "ap_paterno_tutor"
    t.string   "ap_materno_tutor"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "maestros", force: :cascade do |t|
    t.string   "nombre_m"
    t.string   "ap_paterno_m"
    t.string   "ap_materno_m"
    t.string   "grado_m"
    t.string   "grupo_m"
    t.string   "telefono_m"
    t.string   "direccion_m"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
