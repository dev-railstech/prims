class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :code
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4
      t.string :post_code
      t.string :client_dx
      t.string :tel_1
      t.string :tel_2
      t.text :description
      t.string :client_fax
      t.float :last_val
      t.float :purchase_price
      t.date :purchase_date
      t.date :last_val_date
      t.string :loan_with
      t.float :loan_amount
      t.boolean :vat
      t.integer :account_manager_id
      t.integer :portfolio
      t.string :bought_from
      t.float :total_value
      t.date :date_on
      t.date :client_dv
      t.integer :contract_type
      t.integer :contract_collect
      t.integer :contract_dealer
      t.float :contract_billed
      t.date :contract_renew
      t.date :date_m_visit
      t.string :last_person
      t.boolean :contract_vis_1
      t.boolean :contract_vis_2
      t.boolean :contract_vis_3
      t.boolean :contract_vis_4
      t.boolean :contract_vis_5
      t.boolean :contract_vis_6
      t.boolean :contract_vis_7
      t.boolean :contract_vis_8
      t.boolean :contract_vis_9
      t.boolean :contract_vis_10
      t.boolean :contract_vis_11
      t.boolean :contract_vis_12
      t.integer :client_no_visits
      t.boolean :property_sold
      t.date :property_sold_date
      t.float :property_sell_val
      t.date :property_last_bill
      t.float :property_last_bill_val

      t.timestamps
    end
  end
end
