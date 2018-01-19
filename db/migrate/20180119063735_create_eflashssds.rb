class CreateEflashssds < ActiveRecord::Migration[5.1]
  def change
    create_table :eflashssds do |t|
      t.date :receivedate
      t.date :startdate
      t.date :finishdate
      t.string :solution
      t.string :ftype
      t.integer :pccitem
      t.string :capacity
      t.string :qual
      t.string :owner
      t.string :prodname
      t.string :prodpn
      t.text :fwvversion
      t.text :desc
      t.string :pcbvers
      t.string :testres
      t.string :rpname
      t.date :rpdate
      t.text :approvename
      t.text :expl
      t.text :remark

      t.timestamps
    end
  end
end
