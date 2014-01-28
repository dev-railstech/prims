class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :times
      t.text :title

      t.timestamps
    end
  end
end
