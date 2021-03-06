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

ActiveRecord::Schema.define(version: 20180425033021) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eflashssds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "pccitem"
    t.string "receivedate"
    t.string "prodpn"
    t.string "solution"
    t.string "ftype"
    t.text "desc"
    t.string "capacity"
    t.text "fwvversion"
    t.string "qual"
    t.integer "qty"
    t.string "plandate"
    t.string "startdate"
    t.string "finishdate"
    t.string "testres"
    t.string "status"
    t.string "coldbootfail"
    t.string "owner"
    t.string "qtreport"
    t.text "remark"
    t.string "prodname"
    t.string "pcbvers"
    t.string "rpname"
    t.string "rpdate"
    t.text "approvename"
    t.text "expl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pc1os"
    t.text "pc1mb"
    t.text "pc1vendor"
    t.text "pc1chip"
    t.text "pc1bios"
    t.text "pc1interface"
    t.text "pc1basic"
    t.text "pc1comp32"
    t.text "pc1burnin"
    t.text "pc1wboot"
    t.text "pc1cboot"
    t.text "pc1fat"
    t.text "pc1fat32"
    t.text "pc1ntfs"
    t.text "pc1exfat"
    t.text "pc1result"
    t.text "pc1led"
    t.text "pc1inos1"
    t.text "pc1inos2"
    t.text "pc1inos3"
    t.text "pc1inos4"
    t.text "pc1inos5"
    t.text "pc2os"
    t.text "pc2mb"
    t.text "pc2vendor"
    t.text "pc2chip"
    t.text "pc2bios"
    t.text "pc2interface"
    t.text "pc2basic"
    t.text "pc2result"
    t.text "pc2led"
    t.text "pc2inos1"
    t.text "pc2inos2"
    t.text "pc2inos3"
    t.text "pc2inos4"
    t.text "pc2inos5"
    t.text "pc2inos6"
    t.text "pc2inos7"
    t.text "pc2inos8"
    t.text "pc3os"
    t.text "pc3mb"
    t.text "pc3vendor"
    t.text "pc3chip"
    t.text "pc3bios"
    t.text "pc3interface"
    t.text "pc4os"
    t.text "pc4mb"
    t.text "pc4vendor"
    t.text "pc4chip"
    t.text "pc4bios"
    t.text "pc4interface"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.integer "user_id"
  end

  create_table "handies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "item"
    t.integer "pccitem"
    t.date "receivedate"
    t.date "startdate"
    t.date "finishdate"
    t.string "solution"
    t.text "schedule"
    t.string "capacity"
    t.string "qual"
    t.float "read", limit: 24
    t.float "write", limit: 24
    t.string "owner"
    t.string "prodname"
    t.text "desc"
    t.string "prodpn"
    t.text "fwvversion"
    t.string "ftype"
    t.string "pcbvers"
    t.string "testres"
    t.string "expl"
    t.string "rpname"
    t.date "rpdate"
    t.text "approvename"
    t.text "Explain"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pc1os"
    t.text "pc1mb"
    t.text "pc1vendor"
    t.text "pc1chip"
    t.text "pc1bios"
    t.text "pc1basic"
    t.text "pc1comp32"
    t.text "pc1burnin"
    t.text "pc1fat"
    t.text "pc1fat32"
    t.text "pc1ntfs"
    t.text "pc1exfat"
    t.text "pc1result"
    t.text "pc1led"
    t.text "pc2os"
    t.text "pc2mb"
    t.text "pc2vendor"
    t.text "pc2chip"
    t.text "pc2bios"
    t.text "pc2basic"
    t.text "pc2comp32"
    t.text "pc2burnin"
    t.text "pc2fat"
    t.text "pc2fat32"
    t.text "pc2ntfs"
    t.text "pc2exfat"
    t.text "pc2result"
    t.text "pc2led"
    t.text "pc3os"
    t.text "pc3mb"
    t.text "pc3vendor"
    t.text "pc3chip"
    t.text "pc3bios"
    t.text "pc3basic"
    t.text "pc3comp32"
    t.text "pc3burnin"
    t.text "pc3fat"
    t.text "pc3fat32"
    t.text "pc3ntfs"
    t.text "pc3exfat"
    t.text "pc3result"
    t.text "pc3led"
    t.text "pc4os"
    t.text "pc4mb"
    t.text "pc4vendor"
    t.text "pc4chip"
    t.text "pc4bios"
    t.text "pc4basic"
    t.text "pc4ext34"
    t.text "pc4result"
    t.text "pc4led"
    t.text "pc5os"
    t.text "pc5mb"
    t.text "pc5vendor"
    t.text "pc5chip"
    t.text "pc5bios"
    t.text "pc5basic"
    t.text "pc5result"
    t.text "pc5led"
    t.text "cdmread"
    t.text "cdmwrite"
    t.text "rdr112"
    t.text "rdw112"
    t.text "rdr4k"
    t.text "rdw4k"
    t.text "rdrqd324k"
    t.text "rdwqd324k"
    t.text "pc2cdmread"
    t.text "pc2cdmwrite"
    t.text "pc2rdr112"
    t.text "pc2rdw112"
    t.text "pc2rdr4k"
    t.text "pc2rdw4k"
    t.text "pc2rdrqd324k"
    t.text "pc2rdwqd324k"
    t.text "pc3cdmread"
    t.text "pc3cdmwrite"
    t.text "pc3rdr112"
    t.text "pc3rdw112"
    t.text "pc3rdr4k"
    t.text "pc3rdw4k"
    t.text "pc3rdrqd324k"
    t.text "pc3rdwqd324k"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.integer "user_id"
  end

  create_table "istoragessds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "pccitem"
    t.string "receivedate"
    t.string "prodpn"
    t.string "solution"
    t.string "ftype"
    t.text "desc"
    t.text "fwvversion"
    t.string "capacity"
    t.integer "qty"
    t.string "qual"
    t.string "plandate"
    t.string "startdate"
    t.string "finishdate"
    t.string "testres"
    t.string "status"
    t.string "owner"
    t.text "remark"
    t.string "prodname"
    t.string "pcbvers"
    t.string "rpname"
    t.string "rpdate"
    t.text "approvename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pc1os"
    t.text "pc1mb"
    t.text "pc1vendor"
    t.text "pc1chip"
    t.text "pc1bios"
    t.text "pc1interface"
    t.text "pc1basic"
    t.text "pc1comp32"
    t.text "pc1burnin"
    t.text "pc1iometer"
    t.text "pc1fat32"
    t.text "pc1ntfs"
    t.text "pc1exfat"
    t.text "pc1result"
    t.text "pc1install7"
    t.text "pc1reboot7"
    t.text "pc2os"
    t.text "pc2mb"
    t.text "pc2vendor"
    t.text "pc2chip"
    t.text "pc2bios"
    t.text "pc2interface"
    t.text "pc2basic"
    t.text "pc2fat32"
    t.text "pc2ntfs"
    t.text "pc2exfat"
    t.text "pc2result"
    t.text "pc2install7"
    t.text "pc2installfedo"
    t.text "pc2reboot81"
    t.text "pc3os"
    t.text "pc3mb"
    t.text "pc3vendor"
    t.text "pc3chip"
    t.text "pc3bios"
    t.text "pc3interface"
    t.text "pc3basic"
    t.text "pc3comp32"
    t.text "pc3burnin"
    t.text "pc3iometer"
    t.text "pc3fat32"
    t.text "pc3ntfs"
    t.text "pc3exfat"
    t.text "pc3result"
    t.text "pc3install10"
    t.text "pc3reboot10"
    t.text "pc4os"
    t.text "pc4mb"
    t.text "pc4vendor"
    t.text "pc4chip"
    t.text "pc4bios"
    t.text "pc4interface"
    t.text "pc4result"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.string "image4_file_name"
    t.string "image4_content_type"
    t.integer "image4_file_size"
    t.datetime "image4_updated_at"
    t.string "image5_file_name"
    t.string "image5_content_type"
    t.integer "image5_file_size"
    t.datetime "image5_updated_at"
    t.string "image6_file_name"
    t.string "image6_content_type"
    t.integer "image6_file_size"
    t.datetime "image6_updated_at"
    t.string "image7_file_name"
    t.string "image7_content_type"
    t.integer "image7_file_size"
    t.datetime "image7_updated_at"
    t.string "image8_file_name"
    t.string "image8_content_type"
    t.integer "image8_file_size"
    t.datetime "image8_updated_at"
    t.string "image9_file_name"
    t.string "image9_content_type"
    t.integer "image9_file_size"
    t.datetime "image9_updated_at"
    t.string "image10_file_name"
    t.string "image10_content_type"
    t.integer "image10_file_size"
    t.datetime "image10_updated_at"
    t.string "image11_file_name"
    t.string "image11_content_type"
    t.integer "image11_file_size"
    t.datetime "image11_updated_at"
    t.string "image12_file_name"
    t.string "image12_content_type"
    t.integer "image12_file_size"
    t.datetime "image12_updated_at"
    t.integer "user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
