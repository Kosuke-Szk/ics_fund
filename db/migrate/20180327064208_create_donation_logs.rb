class CreateDonationLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :donation_logs do |t|
      t.integer :count, null: false

      t.timestamps
    end
  end
end
