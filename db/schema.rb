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

ActiveRecord::Schema.define(version: 20170327123120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultas", force: :cascade do |t|
    t.date     "data"
    t.string   "hora"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "dentista_id"
    t.integer  "paciente_id"
  end

  add_index "consultas", ["dentista_id"], name: "index_consultas_on_dentista_id", using: :btree
  add_index "consultas", ["paciente_id"], name: "index_consultas_on_paciente_id", using: :btree

  create_table "dentistas", force: :cascade do |t|
    t.string   "nome"
    t.string   "especialidade"
    t.string   "cro"
    t.float    "salario"
    t.string   "rg"
    t.string   "cpf"
    t.string   "nascimento"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "endereco"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "nascimento"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
    t.string   "endereco"
  end

  add_foreign_key "consultas", "dentistas"
  add_foreign_key "consultas", "pacientes"
end
