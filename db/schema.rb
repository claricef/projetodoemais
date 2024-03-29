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

ActiveRecord::Schema.define(version: 2020_05_21_164335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "doacoes", force: :cascade do |t|
    t.string "item"
    t.string "status"
    t.text "obs"
    t.bigint "ong_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ong_id"], name: "index_doacoes_on_ong_id"
  end

  create_table "doadores", force: :cascade do |t|
    t.string "nome"
    t.string "rg"
    t.string "cpf"
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "cep"
    t.string "telefone"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type", "user_id"], name: "index_doadores_on_user_type_and_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "text"
    t.bigint "ong_id"
    t.bigint "doador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doador_id"], name: "index_messages_on_doador_id"
    t.index ["ong_id"], name: "index_messages_on_ong_id"
  end

  create_table "ongs", force: :cascade do |t|
    t.string "cnpj"
    t.string "razao_social"
    t.string "nome_fantasia"
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "cep"
    t.string "telefone"
    t.text "bio"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type", "user_id"], name: "index_ongs_on_user_type_and_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tipo"
    t.string "email"
    t.string "senha"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "doacoes", "ongs"
  add_foreign_key "messages", "doadores"
  add_foreign_key "messages", "ongs"
end
