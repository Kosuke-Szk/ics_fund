class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount,null: false, default: 0

      t.timestamps
    end
  end
end
