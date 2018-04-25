class CreateIstoragessds < ActiveRecord::Migration[5.1]
  def change
    create_table :istoragessds do |t|
      t.integer :pccitem
      t.string :receivedate
      t.string :prodpn
      t.string :solution
      t.string :ftype
      t.text :desc
      t.text :fwvversion
      t.string :capacity
      t.integer :qty
      t.string :qual
      t.string :plandate
      t.string :startdate
      t.string :finishdate
      t.string :testres
      t.string :status
      t.string :owner
      t.text :remark  
      t.string :prodname
      t.string :pcbvers
      t.string :rpname
      t.string :rpdate
      t.text :approvename
      

      t.timestamps
    end
  end
end
