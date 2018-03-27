class CreateApplauses < ActiveRecord::Migration[5.1]
  def change
    create_table :applauses do |t|
      t.integer :applause_num

      t.timestamps
    end
  end
end
