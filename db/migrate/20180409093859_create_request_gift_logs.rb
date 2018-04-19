class CreateRequestGiftLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :request_gift_logs do |t|
      t.integer :request_id
      t.integer :gift_id
      t.integer :status

      t.timestamps
    end
  end
end
