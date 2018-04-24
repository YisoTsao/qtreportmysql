class AddPc4ToIstoragessds < ActiveRecord::Migration[5.1]
  def change
    add_column :istoragessds, :pc4os, :text
    add_column :istoragessds, :pc4mb, :text
    add_column :istoragessds, :pc4vendor, :text
    add_column :istoragessds, :pc4chip, :text
    add_column :istoragessds, :pc4bios, :text
    add_column :istoragessds, :pc4interface, :text
    add_column :istoragessds, :pc4result, :text
  end
end
