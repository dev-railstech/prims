class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :post_code
      t.string :current_period
      t.date :date_on
      t.date :date_last_run
      t.integer :next_bill_no
      t.string :current_year
      t.integer :next_contract_number
      t.integer :next_allocation_number

      t.timestamps
    end
  end
end
