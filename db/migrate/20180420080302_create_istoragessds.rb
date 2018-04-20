class CreateIstoragessds < ActiveRecord::Migration[5.1]
  def change
    create_table :istoragessds do |t|
      t.integer :pccitem
      t.date :receivedate
      t.string :solution
      t.string :ftype
      t.string :capacity
      t.string :qual
      t.integer :qty
      t.date :startdate
      t.date :finishdate
      t.string :testres
      t.string :owner
      t.text :remark
      t.string :prodpn
      t.text :fwvversion
      t.string :prodname
      t.string :pcbvers
      t.string :rpname
      t.date :rpdate
      t.text :approvename
      t.text :desc

      t.timestamps
    end
  end
end
