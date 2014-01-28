class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.text :descriptiom
      t.integer :contract_id
      t.float :debit
      t.float :credit
      t.integer :supplier_id
      t.text :analysis

      t.timestamps
    end
  end
end
