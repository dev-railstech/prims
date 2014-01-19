class CreateNominals < ActiveRecord::Migration
  def change
    create_table :nominals do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
