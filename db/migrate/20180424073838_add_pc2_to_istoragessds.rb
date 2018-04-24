class AddPc2ToIstoragessds < ActiveRecord::Migration[5.1]
  def change
    add_column :istoragessds, :pc2os, :text
    add_column :istoragessds, :pc2mb, :text
    add_column :istoragessds, :pc2vendor, :text
    add_column :istoragessds, :pc2chip, :text
    add_column :istoragessds, :pc2bios, :text
    add_column :istoragessds, :pc2interface, :text
    add_column :istoragessds, :pc2basic, :text
    add_column :istoragessds, :pc2fat32, :text
    add_column :istoragessds, :pc2ntfs, :text
    add_column :istoragessds, :pc2exfat, :text
    add_column :istoragessds, :pc2result, :text
    add_column :istoragessds, :pc2install7, :text
    add_column :istoragessds, :pc2installfedo, :text
    add_column :istoragessds, :pc2reboot81, :text
  end
end
