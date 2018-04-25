class AddUserIdToIstoragessds < ActiveRecord::Migration[5.1]
  def change
  	add_column :istoragessds, :user_id, :integer
  end
end
