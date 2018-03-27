class CreateMicropostLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :micropost_logs do |t|
      t.integer :micropost_id, null: false

      t.timestamps
    end
  end
end
