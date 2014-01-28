class CreateLetTypes < ActiveRecord::Migration
  def change
    create_table :let_types do |t|
      t.integer :type
      t.text :description

      t.timestamps
    end
  end
end
