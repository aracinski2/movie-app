class AddAdminToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :string
  end
end
