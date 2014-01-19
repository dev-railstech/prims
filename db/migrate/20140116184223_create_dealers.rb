class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :code
      t.string :name
      t.string :add_1
      t.string :add_2
      t.string :add_3
      t.string :post_code
      t.string :dx
      t.string :fax
      t.string :tel
      t.string :email_1
      t.string :email_2
      t.string :email_3
      t.date :date_on

      t.timestamps
    end
  end
end
