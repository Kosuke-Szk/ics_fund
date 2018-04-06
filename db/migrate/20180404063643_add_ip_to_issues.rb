class AddIpToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :remote_ip, :string
  end
end
