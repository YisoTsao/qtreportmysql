class AddPc3ToIstoragessds < ActiveRecord::Migration[5.1]
  def change
    add_column :istoragessds, :pc3os, :text
    add_column :istoragessds, :pc3mb, :text
    add_column :istoragessds, :pc3vendor, :text
    add_column :istoragessds, :pc3chip, :text
    add_column :istoragessds, :pc3bios, :text
    add_column :istoragessds, :pc3interface, :text
    add_column :istoragessds, :pc3basic, :text
    add_column :istoragessds, :pc3comp32, :text
    add_column :istoragessds, :pc3burnin, :text
    add_column :istoragessds, :pc3iometer, :text
    add_column :istoragessds, :pc3fat32, :text
    add_column :istoragessds, :pc3ntfs, :text
    add_column :istoragessds, :pc3exfat, :text
    add_column :istoragessds, :pc3result, :text
    add_column :istoragessds, :pc3install10, :text
    add_column :istoragessds, :pc3reboot10, :text
  end
end
