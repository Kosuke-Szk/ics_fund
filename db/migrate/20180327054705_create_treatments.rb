class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.integer :amount,null: false, default: 0

      t.timestamps
    end
  end
end
