class AddCommentToApplauses < ActiveRecord::Migration[5.1]
  def change
    add_column :applauses, :comment, :text
  end
end
