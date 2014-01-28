class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :company_id
      t.integer :contract_id
      t.integer :period
      t.integer :item_id
      t.integer :type
      t.integer :collect
      t.integer :discount
      t.integer :unique
      t.integer :number
      t.string :yr
      t.string :qty
      t.boolean :vat
      t.boolean :closed
      t.float :val
      t.date :date

      t.timestamps
    end
  end
end
