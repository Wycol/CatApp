class AddUserType < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tipo, :integer
  end
end
