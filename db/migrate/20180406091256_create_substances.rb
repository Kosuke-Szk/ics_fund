class CreateSubstances < ActiveRecord::Migration[5.1]
  def change
    create_table :substances do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :gift, foreign_key: true

      t.timestamps
    end
  end
end
