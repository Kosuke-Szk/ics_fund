class AddPlainTextToMicropost < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :plain_content, :text
  end
end
