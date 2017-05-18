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

ActiveRecord::Schema.define(version: 20170518131255) do

  create_table "accumulators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "acc_val_change",    limit: 24
    t.float    "acc_val_available", limit: 24
    t.float    "acc_val_before",    limit: 24
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["imageable_type", "imageable_id"], name: "index_accumulators_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "bonus_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "da_val_available", limit: 24
    t.float    "da_val_change",    limit: 24
    t.float    "da_val_before",    limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "call_chargeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "call_record_id"
    t.float    "charged_value",  limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["call_record_id"], name: "index_call_chargeds_on_call_record_id", using: :btree
  end

  create_table "call_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_account_id"
    t.string   "call_destinatio"
    t.integer  "duration"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "short_code_id"
    t.integer  "isd_tariff_id"
    t.index ["isd_tariff_id"], name: "index_call_records_on_isd_tariff_id", using: :btree
    t.index ["short_code_id"], name: "index_call_records_on_short_code_id", using: :btree
    t.index ["user_account_id"], name: "index_call_records_on_user_account_id", using: :btree
  end

  create_table "communities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_communities_on_product_id", using: :btree
  end

  create_table "fnfs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "no_of_fnf"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_fnfs_on_product_id", using: :btree
  end

  create_table "isd_tariffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "pulse"
    t.float    "tariff",        limit: 24
    t.string   "number_prefix"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "item_features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "pulse"
    t.float    "tariff_on_net",          limit: 24
    t.float    "tariff_off_net",         limit: 24
    t.float    "tariff_on_net_on_atw",   limit: 24
    t.float    "tariff_off_net_on_atw",  limit: 24
    t.string   "applicable_time_window"
    t.string   "call_destination"
    t.string   "itemable_type"
    t.integer  "itemable_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["itemable_type", "itemable_id"], name: "index_item_features_on_itemable_type_and_itemable_id", using: :btree
  end

  create_table "offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "value"
    t.string   "prioritize_type"
    t.integer  "prioritize_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["prioritize_type", "prioritize_id"], name: "index_priorities_on_prioritize_type_and_prioritize_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "short_codes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone_no"
    t.float    "acc_val_before", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["phone_no"], name: "index_user_accounts_on_phone_no", using: :btree
  end

  create_table "user_fnfs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_account_id"
    t.string   "fnf_no"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_account_id"], name: "index_user_fnfs_on_user_account_id", using: :btree
  end

  create_table "user_offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_account_id"
    t.integer  "offer_id"
    t.integer  "priority_value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["offer_id"], name: "index_user_offers_on_offer_id", using: :btree
    t.index ["user_account_id"], name: "index_user_offers_on_user_account_id", using: :btree
  end

  add_foreign_key "communities", "products"
  add_foreign_key "fnfs", "products"
end
