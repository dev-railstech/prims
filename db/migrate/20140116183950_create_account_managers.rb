class CreateAccountManagers < ActiveRecord::Migration
  def change
    create_table :account_managers do |t|
      t.string :code
      t.string :name
      t.date :joining_date

      t.timestamps
    end
  end
end
