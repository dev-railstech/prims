class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :chq_no
      t.float :debit
      t.float :credit
      t.text :description
      t.integer :allocation_id
      t.string :balance

      t.timestamps
    end
  end
end
