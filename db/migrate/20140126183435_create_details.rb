class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.text :description
      t.integer :vat_code
      t.float :val
      t.string :nom
      t.integer :qty
      t.float :item_val
      t.integer :link
      t.date :date_added
      t.integer :plink
      t.boolean :suspend
      t.string :why
      t.date :date

      t.timestamps
    end
  end
end
