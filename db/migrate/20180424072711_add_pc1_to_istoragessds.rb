class AddPc1ToIstoragessds < ActiveRecord::Migration[5.1]
  def change
    add_column :istoragessds, :pc1os, :text
    add_column :istoragessds, :pc1mb, :text
    add_column :istoragessds, :pc1vendor, :text
    add_column :istoragessds, :pc1chip, :text
    add_column :istoragessds, :pc1bios, :text
    add_column :istoragessds, :pc1interface, :text
    add_column :istoragessds, :pc1basic, :text
    add_column :istoragessds, :pc1comp32, :text
    add_column :istoragessds, :pc1burnin, :text
    add_column :istoragessds, :pc1iometer, :text
    add_column :istoragessds, :pc1fat32, :text
    add_column :istoragessds, :pc1ntfs, :text
    add_column :istoragessds, :pc1exfat, :text
    add_column :istoragessds, :pc1result, :text
    add_column :istoragessds, :pc1install7, :text
    add_column :istoragessds, :pc1reboot7, :text
  end
end
