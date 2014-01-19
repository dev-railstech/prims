class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.text :description
      t.string :nom_code
      t.float :cost

      t.timestamps
    end
  end
end
