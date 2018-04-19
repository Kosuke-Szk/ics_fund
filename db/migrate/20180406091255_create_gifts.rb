class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.datetime :date
      t.integer :status

      t.timestamps
    end
  end
end
