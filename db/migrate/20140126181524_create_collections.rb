class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :times
      t.text :title

      t.timestamps
    end
  end
end
