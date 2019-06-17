class AddDefaultValueToActive < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :tipo, :integer, :default => 0
  end
end
