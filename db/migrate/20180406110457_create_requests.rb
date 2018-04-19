class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :status
      t.integer :total

      t.timestamps
    end
  end
end
