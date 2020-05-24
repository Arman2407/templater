# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_23_191317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "active_storage_attachments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.uuid "record_id", null: false
    t.uuid "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "businesses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "company_full_name", default: "", null: false
    t.string "company_short_name", default: "", null: false
    t.string "signatory_person", default: "", null: false
    t.string "signatory_person_genitive", default: "", null: false
    t.string "signatory_basis", default: "", null: false
    t.string "signatory_basis_genitive", default: "", null: false
    t.string "inn", default: "", null: false
    t.string "kpp", default: "", null: false
    t.string "ogrn", default: "", null: false
    t.text "legal_address", default: "", null: false
    t.text "real_address", default: "", null: false
    t.text "post_address", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "email", default: "", null: false
    t.uuid "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_businesses_on_owner_id"
  end

  create_table "counterparties", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "company_full_name", default: "", null: false
    t.string "company_short_name", default: "", null: false
    t.string "signatory_person", default: "", null: false
    t.string "signatory_person_genitive", default: "", null: false
    t.string "signatory_basis", default: "", null: false
    t.string "signatory_basis_genitive", default: "", null: false
    t.string "inn", default: "", null: false
    t.string "kpp", default: "", null: false
    t.string "ogrn", default: "", null: false
    t.text "legal_address", default: "", null: false
    t.text "real_address", default: "", null: false
    t.text "post_address", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "email", default: "", null: false
    t.uuid "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_counterparties_on_owner_id"
  end

  create_table "document_templates", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.uuid "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_document_templates_on_owner_id"
  end

  create_table "documents", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "template_id", null: false
    t.uuid "business_id", null: false
    t.uuid "counterparty_id", null: false
    t.string "contract_num", default: "", null: false
    t.date "signing_date"
    t.integer "amount_num", default: 0, null: false
    t.string "amount_text", default: "", null: false
    t.uuid "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_documents_on_business_id"
    t.index ["counterparty_id"], name: "index_documents_on_counterparty_id"
    t.index ["owner_id"], name: "index_documents_on_owner_id"
    t.index ["template_id"], name: "index_documents_on_template_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "businesses", "users", column: "owner_id"
  add_foreign_key "counterparties", "users", column: "owner_id"
  add_foreign_key "document_templates", "users", column: "owner_id"
  add_foreign_key "documents", "businesses"
  add_foreign_key "documents", "counterparties"
  add_foreign_key "documents", "document_templates", column: "template_id"
  add_foreign_key "documents", "users", column: "owner_id"
end
